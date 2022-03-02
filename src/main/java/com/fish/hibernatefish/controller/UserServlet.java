package com.fish.hibernatefish.controller;

import com.fish.hibernatefish.config.ConfigSessionFactory;
import com.fish.hibernatefish.model.*;
import com.fish.hibernatefish.service.BaseService;
import com.fish.hibernatefish.service.impl.ReelsServiceImpl;
import com.fish.hibernatefish.service.impl.RodsServiceImpl;
import com.fish.hibernatefish.service.impl.TypeServiceImpl;
import com.fish.hibernatefish.service.impl.UserServiceImpl;
import org.hibernate.Session;

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
import java.util.Set;
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
                case "/addMyRod" -> addMyRod(req,resp);
                case "/update" -> updateUser(req, resp);
                case "/delete" -> deleteUser(req, resp);
                case "/edit" -> showEditForm(req, resp);
                case "/deleteRodsCh" -> deleteRodsCh(req, resp);
                case "/catalog" -> showCatalog(req,resp);
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
        //HttpSession session = req.getSession();
        Session session = ConfigSessionFactory.getSessionFactory().openSession();
        List<RodsCharacter> rodsCharacters = session.createSQLQuery("SELECT * from rods r1 INNER JOIN fishman_rods fr on r1.id = fr.rods_id").getResultList();
        req.setAttribute("listRods", rodsCharacters);
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

    private void addMyRod(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException{
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
        Conf modelType = Conf.valueOf(req.getParameter("modelType"));
        RodsCharacter rodsCharacter = new RodsCharacter(model,length,power,lureTest,lineTest,action,weight,section,tLength,modelType);
        User user = (User) session.getAttribute("user");
        User userBd = service.findById(user.getId());
        //Set<RodsCharacter> rodsCharacters = userBd.getRodsCharacters();
        //rodsCharacters.add(rodsCharacter);
        service.update(userBd);
        session.setAttribute("user", userBd);
        resp.sendRedirect("cabinet");
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
        resp.sendRedirect("users");
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

    private void deleteRodsCh(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        int id = Integer.parseInt(req.getParameter("id"));
        service.deleteById(id);
        resp.sendRedirect("manage");
    }
}
