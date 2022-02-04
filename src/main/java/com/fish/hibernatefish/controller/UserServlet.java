package com.fish.hibernatefish.controller;

import com.fish.hibernatefish.model.*;
import com.fish.hibernatefish.service.BaseService;
import com.fish.hibernatefish.service.impl.ReelsServiceImpl;
import com.fish.hibernatefish.service.impl.RodsServiceImpl;
import com.fish.hibernatefish.service.impl.TypeServiceImpl;
import com.fish.hibernatefish.service.impl.UserServiceImpl;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.util.List;
import java.util.stream.Collectors;

@WebServlet(urlPatterns = {"/base/*"})
public class UserServlet extends HttpServlet {
    private BaseService<User> service;
    private BaseService<RodsCharacter> download = new RodsServiceImpl();
    private BaseService<Rods> load = new TypeServiceImpl();
    private BaseService<Reels> reelsBaseService = new ReelsServiceImpl();

    public void init() {
        service = new UserServiceImpl();
    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException {
        String action = req.getPathInfo();

        try {
            switch (action) {
                case "/registration" -> registrationForm(req, resp);
                case "/login" -> loginForm(req, resp);
                case "/loginAction" -> loginUser(req, resp);
                case "/logoutAction" -> logoutUser(req, resp);
                case "/add" -> addUser(req, resp);
                case "/addQ" -> addUserQvick(req,resp);
                case "/addRod" -> addRod(req, resp);
                case "/addReels" -> addReels(req, resp);
                case "/update" -> updateUser(req, resp);
                case "/updateRods" -> updateRods(req, resp);
                case "/delete" -> deleteUser(req, resp);
                case "/edit" -> showEditForm(req, resp);
                case "/editRodsCh" -> showEditFormRods(req, resp);
                case "/deleteRodsCh" -> deleteRodsCh(req, resp);
                case "/catalog" -> showCatalog(req,resp);
                case "/manage" -> manageForm(req,resp);
                case "/reels" -> listReels(req,resp);
                case "/users" -> manageUser(req,resp);
                case "/cabinet" -> userCabinet(req,resp);
                default -> listUser(req, resp);
            }
        } catch (ServletException | IOException e) {
            throw new ServletException(e);
        }
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        doGet(req, resp);
    }

    private void showCatalog(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String search = req.getParameter("search"); //необходим для реализации поиска на странице
        ServletContext servletContext = getServletContext();
        RequestDispatcher dispatcher = servletContext.getRequestDispatcher("/WEB-INF/pages/list-of-rods.jsp");
    }

    private void manageForm(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String search = req.getParameter("search");
        List<User> users = service.findAll();
        List<RodsCharacter> rodsCharacters = download.findAll();
        List<Rods> rods = load.findAll();
        req.setAttribute("listUser", users);
        req.setAttribute("listRods", rodsCharacters);
        req.setAttribute("listTypeRods", rods);
        ServletContext servletContext = getServletContext();
        RequestDispatcher dispatcher = servletContext.getRequestDispatcher("/WEB-INF/pages/manage-form.jsp");
        dispatcher.forward(req,resp);
        resp.sendRedirect("manage");
    }

    private void manageUser(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String search = req.getParameter("search");
        List<User> users = service.findAll();
        req.setAttribute("listUser", users);
        ServletContext servletContext = getServletContext();
        RequestDispatcher dispatcher = servletContext.getRequestDispatcher("/WEB-INF/pages/manage-user.jsp");
        dispatcher.forward(req,resp);
        resp.sendRedirect("users");
    }

    private void userCabinet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        HttpSession session = req.getSession();
        User user=(User) session.getAttribute("user");
        long userId = user.getId();
        req.setAttribute("rods", service.findById(userId).getRodsCharacters());
//        req.setAttribute("cars", user.getCars());
        ServletContext servletContext = getServletContext();
        RequestDispatcher dispatcher = servletContext.getRequestDispatcher("/WEB-INF/pages/user-cabinet.jsp");
        dispatcher.forward(req, resp);
    }

    private void listUser(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String search = req.getParameter("search");
        List<User> users = service.findAll();
        List<RodsCharacter> rodsCharacters = download.findAll();
        if (search != null) {
            users = users.stream().filter(user -> user.getName().contains(search) ||
                    user.getLastName().contains(search) ||
                    user.getAddress().contains(search)).collect(Collectors.toList());
        }
        req.setAttribute("listUser", users);
        req.setAttribute("listRods", rodsCharacters);
        ServletContext servletContext = getServletContext();
        RequestDispatcher dispatcher = servletContext.getRequestDispatcher("/WEB-INF/pages/list-user.jsp");
        dispatcher.forward(req, resp);
    }

    private void listReels(HttpServletRequest req,HttpServletResponse resp)throws ServletException,IOException{
        String search = req.getParameter("search");
        List<Reels> reels = reelsBaseService.findAll();
        req.setAttribute("listReels", reels);
        ServletContext servletContext = getServletContext();
        RequestDispatcher dispatcher = servletContext.getRequestDispatcher("/WEB-INF/pages/manage-form-reels.jsp");
        dispatcher.forward(req,resp);
    }

    private void addUser(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        HttpSession session = req.getSession();
        String name = req.getParameter("name");
        String lName = req.getParameter("lastName");
        String address = req.getParameter("address");
        String login = req.getParameter("login");
        String password = req.getParameter("password");
        boolean isMarried = req.getParameter("isMarried").equals("true");
        Role role = Role.USER;
        User user = new User(name, lName, address, isMarried);
        user.setLogin(login);
        user.setPassword(password);
        user.setRole(role);
        boolean isAdded = service.create(user);
        if (isAdded) {
            session.setAttribute("user", user);
            session.setAttribute("userRole", user.getRole().name());
        }
        resp.sendRedirect("list");
    }

    private void addUserQvick(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        HttpSession session = req.getSession();
        String name = req.getParameter("name");
        String lName = req.getParameter("lastName");
        int age = Integer.parseInt(req.getParameter("age"));
        String address = req.getParameter("address");
        String login = req.getParameter("login");
        String password = req.getParameter("password");
        boolean isMarried = req.getParameter("isMarried").equals("true");
        Role role = Role.USER;
        User user = new User(name, lName, age, address, isMarried);
        user.setLogin(login);
        user.setPassword(password);
        user.setRole(role);
        boolean isAdded = service.create(user);
        if (isAdded) {
            session.setAttribute("user", user);
            session.setAttribute("userRole", user.getRole().name());
        }
        resp.sendRedirect("users");
    }

    private void addRod(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        HttpSession session = req.getSession();
        String model = req.getParameter("model");
        String length = req.getParameter("length");
        String power = req.getParameter("power");
        String lureTest = req.getParameter("lureTest");
        String lineTest = req.getParameter("lineTest");
        String action = req.getParameter("action");
        String weight = req.getParameter("weight");
        String section = req.getParameter("section");
        String tLength = req.getParameter("tLength");
        RodsCharacter rodsCharacter = new RodsCharacter(model,length,power,lureTest,lineTest,action,weight,section,tLength);
        rodsCharacter.setModel(model);
        rodsCharacter.setLength(length);
        rodsCharacter.setPower(power);
        rodsCharacter.setLureTest(lureTest);
        rodsCharacter.setLineTest(lineTest);
        rodsCharacter.setAction(action);
        rodsCharacter.setWeight(weight);
        rodsCharacter.setSection(section);
        rodsCharacter.settLength(tLength);
        boolean isAdded = download.create(rodsCharacter);
        if (isAdded) {
            session.setAttribute("model", rodsCharacter);
        }
        resp.sendRedirect("manage");
    }

    private void addReels(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        HttpSession session = req.getSession();
        String modelName = req.getParameter("modelName");
        String bodyMaterial = req.getParameter("bodyMaterial");
        String bearings = req.getParameter("bearings");
        String familyType = req.getParameter("familyType");
        String handle = req.getParameter("handle");
        String spoolMaterial = req.getParameter("spoolMaterial");
        String models = req.getParameter("models");
        String waterType = req.getParameter("waterType");
        Reels reels = new Reels(modelName,bodyMaterial,bearings,familyType,handle,spoolMaterial,models,waterType);
        reels.setModelName(modelName);
        reels.setBodyMaterial(bodyMaterial);
        reels.setBearings(bearings);
        reels.setFamilyType(familyType);
        reels.setHandle(handle);
        reels.setSpoolMaterial(spoolMaterial);
        reels.setModels(models);
        reels.setWaterType(waterType);
        boolean isAdded = reelsBaseService.create(reels);
        if (isAdded) {
            session.setAttribute("modelName", reels);
        }
        resp.sendRedirect("reels");
    }

    private void loginUser(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        HttpSession session = req.getSession();
        String login = req.getParameter("login");
        String password = req.getParameter("password");
        User user = service.findByLoginAndPassword(login, password);
        if (user != null) {
            session.setAttribute("user", user);
            session.setAttribute("userRole", user.getRole().name());
        } else {
            req.setAttribute("invalidLoginOrPassword", true);
            ServletContext servletContext = getServletContext();
            RequestDispatcher dispatcher = servletContext.getRequestDispatcher("/WEB-INF/pages/login.jsp");
            dispatcher.forward(req, resp);

        }
        resp.sendRedirect("list");
    }

    private void logoutUser(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        HttpSession session = req.getSession();
        session.invalidate();
        resp.sendRedirect("list");
    }

    private void updateUser(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        int id = Integer.parseInt(req.getParameter("id"));
        String name = req.getParameter("name");
        String lName = req.getParameter("lastName");
        String address = req.getParameter("address");
        String login = req.getParameter("login");
        String password = req.getParameter("password");
        boolean isMarried = req.getParameter("isMarried").equals("true");
        User user = new User(name, lName, address, isMarried);
        user.setId(id);
        user.setLogin(login);
        user.setPassword(password);
        service.update(user);
        resp.sendRedirect("manage");
    }

    private void deleteUser(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        int id = Integer.parseInt(req.getParameter("id"));
        service.deleteById(id);
        resp.sendRedirect("manage");
    }

    private void registrationForm(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        ServletContext servletContext = getServletContext();
        RequestDispatcher dispatcher = servletContext.getRequestDispatcher("/WEB-INF/pages/registration.jsp");
        dispatcher.forward(req, resp);
    }

    private void loginForm(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        ServletContext servletContext = getServletContext();
        RequestDispatcher dispatcher = servletContext.getRequestDispatcher("/WEB-INF/pages/login.jsp");
        dispatcher.forward(req, resp);
    }

    private void showEditForm(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        int id = Integer.parseInt(req.getParameter("id"));
        User existedUser = service.findById(id);
        req.setAttribute("existedUser", existedUser);
        ServletContext servletContext = getServletContext();
        RequestDispatcher dispatcher = servletContext.getRequestDispatcher("/WEB-INF/pages/edit-user.jsp");
        dispatcher.forward(req, resp);
    }

    private void showEditFormRods(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        int id = Integer.parseInt(req.getParameter("id"));
        RodsCharacter existedRods = download.findById(id);
        req.setAttribute("existedRods", existedRods);
        ServletContext servletContext = getServletContext();
        RequestDispatcher dispatcher = servletContext.getRequestDispatcher("/WEB-INF/pages/edit-rods.jsp");
        dispatcher.forward(req, resp);
    }

    private void deleteRodsCh(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        int id = Integer.parseInt(req.getParameter("id"));
        service.deleteById(id);
        resp.sendRedirect("manage");
    }

    private void updateRods(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        int id = Integer.parseInt(req.getParameter("id"));
        String model = req.getParameter("model");
        String length = req.getParameter("length");
        String power = req.getParameter("power");
        String lureTest = req.getParameter("lureTest");
        String lineTest = req.getParameter("lineTest");
        String action = req.getParameter("action");
        String weight = req.getParameter("weight");
        String section = req.getParameter("section");
        String tLength = req.getParameter("tLength");
        RodsCharacter rodsCharacter = new RodsCharacter(model, length, power, lureTest, lineTest, action, weight, section, tLength);
        rodsCharacter.setId(id);
        rodsCharacter.setModel(model);
        rodsCharacter.setLength(length);
        rodsCharacter.setPower(power);
        rodsCharacter.setLureTest(lureTest);
        rodsCharacter.setLineTest(lineTest);
        rodsCharacter.setAction(action);
        rodsCharacter.setWeight(weight);
        rodsCharacter.setSection(section);
        rodsCharacter.setLength(tLength);
        download.update(rodsCharacter);
        resp.sendRedirect("manage");
    }
}
