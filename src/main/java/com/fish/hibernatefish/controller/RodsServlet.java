package com.fish.hibernatefish.controller;

import com.fish.hibernatefish.config.ConfigSessionFactory;
import com.fish.hibernatefish.model.Conf;
import com.fish.hibernatefish.model.Reels;
import com.fish.hibernatefish.model.RodsCharacter;
import com.fish.hibernatefish.model.User;
import com.fish.hibernatefish.service.BaseService;
import com.fish.hibernatefish.service.impl.RodsServiceImpl;
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

@WebServlet(urlPatterns = {"/list-of-rods/*"})
public class RodsServlet extends HttpServlet {
    private BaseService<User> service;
    public void init() {
        service = new UserServiceImpl();
    }
    private BaseService<RodsCharacter> download = new RodsServiceImpl();


    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String action = req.getPathInfo();

        try {
            switch (action) {
                //case "/registration" -> registrationForm(req, resp);
                case "/action" -> viewAction(req,resp);
                case "/blue-bird" -> viewBB(req,resp);
                case "/black-swan" -> viewBlackSwan(req,resp);
                case "/cobalt" -> viewCobalt(req,resp);
                case "/creed" -> viewCreed(req,resp);
                case "/impulse" -> viewImpulse(req,resp);
                case "/neo-breeze" -> viewNeoBreeze(req,resp);
                case "/professional" -> viewProfessional(req,resp);
                case "/rapid" -> viewRapid(req,resp);
                case "/white-bird" -> viewWhiteBird(req,resp);
                case "/list-rods" ->listRods(req,resp);
                case "/add-rod" -> addRod(req,resp);
                case "/edit-rod" -> showEditFormRods(req,resp);
                case "/update-rod" ->updateRods(req,resp);
                case "/add-to-buy" -> addToBuy(req,resp);

                default -> mainMenu(req, resp);
            }
        } catch (ServletException | IOException e) {
            throw new ServletException(e);
        }
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        doGet(req, resp);
    }

    private void mainMenu(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String search = req.getParameter("search"); //необходим для реализации поиска на странице
        ServletContext servletContext = getServletContext();
        RequestDispatcher dispatcher = servletContext.getRequestDispatcher("/WEB-INF/pages/list-of-rods.jsp");
        dispatcher.forward(req,resp);
    }

    private void listRods(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String search = req.getParameter("search");
        List<RodsCharacter> rodsCharacters = download.findAll();
        req.setAttribute("listRods", rodsCharacters);
        ServletContext servletContext = getServletContext();
        RequestDispatcher dispatcher = servletContext.getRequestDispatcher("/WEB-INF/pages/manage-form-rods.jsp");
        dispatcher.forward(req,resp);
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
        Conf modelType = Conf.valueOf(req.getParameter("modelType"));
        RodsCharacter rodsCharacter = new RodsCharacter(model,length,power,lureTest,lineTest,action,weight,section,tLength,modelType);
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
            session.setAttribute("rodModel",rodsCharacter);
        }
        resp.sendRedirect("list-rods");
    }

    private void showEditFormRods(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        int id = Integer.parseInt(req.getParameter("id"));
        RodsCharacter existedRods = download.findById(id);
        req.setAttribute("existedRods", existedRods);
        ServletContext servletContext = getServletContext();
        RequestDispatcher dispatcher = servletContext.getRequestDispatcher("/WEB-INF/pages/edit-rods.jsp");
        dispatcher.forward(req, resp);
        resp.sendRedirect("list-rods");
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
        Conf modelType = Conf.valueOf(req.getParameter("modelType"));
        RodsCharacter rodsCharacter = new RodsCharacter(id, model, length, power, lureTest, lineTest, action, weight, section, tLength, modelType);
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
        rodsCharacter.setModelType(modelType);
        download.update(rodsCharacter);
        resp.sendRedirect("list-rods");
    }

    private void viewAction(HttpServletRequest req,HttpServletResponse resp)throws ServletException,IOException{
        //String search = req.getParameter("search");
        Session session = ConfigSessionFactory.getSessionFactory().openSession();
        List<RodsCharacter> rodsCharacters = session.createQuery("from RodsCharacter where modelType = 0").getResultList();
        //List<RodsCharacter> rodsCharacters = session.createQuery("from RodsCharacter r1 inner join rr1.id = fr.rods_id").getResultList();
        //List<RodsCharacter> rodsCharacters = session.createSQLQuery("SELECT * from rods r1 INNER JOIN fishman_rods fr on r1.id = fr.rods_id").getResultList();
        req.setAttribute("listRods", rodsCharacters);
        ServletContext servletContext = getServletContext();
        RequestDispatcher dispatcher = servletContext.getRequestDispatcher("/WEB-INF/pages/arena-rod.jsp");
        dispatcher.forward(req,resp);
    }

    private void viewBB(HttpServletRequest req,HttpServletResponse resp)throws ServletException,IOException{
        //String search = req.getParameter("search");
        Session session = ConfigSessionFactory.getSessionFactory().openSession();
        List<RodsCharacter> rodsCharacters = session.createQuery("from RodsCharacter where modelType = 1").getResultList();
        req.setAttribute("listRods", rodsCharacters);
        ServletContext servletContext = getServletContext();
        RequestDispatcher dispatcher = servletContext.getRequestDispatcher("/WEB-INF/pages/bluebird-rod.jsp");
        dispatcher.forward(req,resp);
    }

    private void viewBlackSwan(HttpServletRequest req,HttpServletResponse resp)throws ServletException,IOException{
        Session session = ConfigSessionFactory.getSessionFactory().openSession();
        List<RodsCharacter> rodsCharacters = session.createQuery("from RodsCharacter where modelType = 6").getResultList();
        req.setAttribute("listRods", rodsCharacters);
        ServletContext servletContext = getServletContext();
        RequestDispatcher dispatcher = servletContext.getRequestDispatcher("/WEB-INF/pages/blackswan-rod.jsp");
        dispatcher.forward(req,resp);
    }

    private void viewCobalt(HttpServletRequest req, HttpServletResponse resp)throws ServletException,IOException{
        Session session = ConfigSessionFactory.getSessionFactory().openSession();
        List<RodsCharacter> rodsCharacters = session.createQuery("from RodsCharacter where modelType = 7").getResultList();
        req.setAttribute("listRods", rodsCharacters);
        ServletContext servletContext = getServletContext();
        RequestDispatcher dispatcher = servletContext.getRequestDispatcher("/WEB-INF/pages/cobalt-rod.jsp");
        dispatcher.forward(req,resp);
    }

    private void viewCreed(HttpServletRequest req,HttpServletResponse resp)throws ServletException,IOException{
        Session session = ConfigSessionFactory.getSessionFactory().openSession();
        List<RodsCharacter> rodsCharacters = session.createQuery("from RodsCharacter where modelType = 8").getResultList();
        req.setAttribute("listRods", rodsCharacters);
        ServletContext servletContext = getServletContext();
        RequestDispatcher dispatcher = servletContext.getRequestDispatcher("/WEB-INF/pages/creed-rod.jsp");
        dispatcher.forward(req,resp);
    }

    private void viewImpulse(HttpServletRequest req,HttpServletResponse resp)throws ServletException,IOException{
        Session session = ConfigSessionFactory.getSessionFactory().openSession();
        List<RodsCharacter> rodsCharacters = session.createQuery("from RodsCharacter where modelType = 9").getResultList();
        req.setAttribute("listRods", rodsCharacters);
        ServletContext servletContext = getServletContext();
        RequestDispatcher dispatcher = servletContext.getRequestDispatcher("/WEB-INF/pages/impulse-rod.jsp");
        dispatcher.forward(req,resp);
    }

    private void viewNeoBreeze(HttpServletRequest req,HttpServletResponse resp)throws ServletException,IOException{
        Session session = ConfigSessionFactory.getSessionFactory().openSession();
        List<RodsCharacter> rodsCharacters = session.createQuery("from RodsCharacter where modelType = 5").getResultList();
        req.setAttribute("listRods", rodsCharacters);
        ServletContext servletContext = getServletContext();
        RequestDispatcher dispatcher = servletContext.getRequestDispatcher("/WEB-INF/pages/neo-breeze-rod.jsp");
        dispatcher.forward(req,resp);
    }

    private void viewProfessional(HttpServletRequest req,HttpServletResponse resp)throws ServletException,IOException{
        Session session = ConfigSessionFactory.getSessionFactory().openSession();
        List<RodsCharacter> rodsCharacters = session.createQuery("from RodsCharacter where modelType = 6").getResultList();
        req.setAttribute("listRods", rodsCharacters);
        ServletContext servletContext = getServletContext();
        RequestDispatcher dispatcher = servletContext.getRequestDispatcher("/WEB-INF/pages/professional-rod.jsp");
        dispatcher.forward(req,resp);
    }

    private void viewRapid(HttpServletRequest req,HttpServletResponse resp)throws ServletException,IOException{
        Session session = ConfigSessionFactory.getSessionFactory().openSession();
        List<RodsCharacter> rodsCharacters = session.createQuery("from RodsCharacter where modelType = 7").getResultList();
        req.setAttribute("listRods", rodsCharacters);
        ServletContext servletContext = getServletContext();
        RequestDispatcher dispatcher = servletContext.getRequestDispatcher("/WEB-INF/pages/rapid-rod.jsp");
        dispatcher.forward(req,resp);
    }

    private void viewWhiteBird(HttpServletRequest req,HttpServletResponse resp)throws ServletException,IOException{
        Session session = ConfigSessionFactory.getSessionFactory().openSession();
        List<RodsCharacter> rodsCharacters = session.createQuery("from RodsCharacter where modelType = 8").getResultList();
        req.setAttribute("listRods", rodsCharacters);
        ServletContext servletContext = getServletContext();
        RequestDispatcher dispatcher = servletContext.getRequestDispatcher("/WEB-INF/pages/white-bird-rod.jsp");
        dispatcher.forward(req,resp);
    }

    private void addToBuy(HttpServletRequest req, HttpServletResponse resp)throws ServletException, IOException{
        HttpSession session = req.getSession();
        int id = Integer.parseInt(req.getParameter("id"));
        RodsCharacter existedRods = download.findById(id);
        req.setAttribute("existedRods", existedRods);
        //String model = req.getParameter("model");
        //String length = req.getParameter("length");
        //String power = req.getParameter("power");
        //String lureTest = req.getParameter("lureTest");
        //String lineTest = req.getParameter("lineTest");
        //String action = req.getParameter("action");
        //String weight = req.getParameter("weight");
        //String section = req.getParameter("section");
        //String tLength = req.getParameter("tLength");

        //rodsCharacter.setModel(model);
        //rodsCharacter.setLength(length);
        //rodsCharacter.setPower(power);
        //rodsCharacter.setLureTest(lureTest);
        //rodsCharacter.setLineTest(lineTest);
        //rodsCharacter.setAction(action);
        //rodsCharacter.setWeight(weight);
        //rodsCharacter.setSection(section);
        //rodsCharacter.settLength(tLength);
        User user = (User) session.getAttribute("user");
        User userBd = service.findById(user.getId());
        //Set<RodsCharacter> rodsCharacters = userBd.getRodsCharacters();
        //List<RodsCharacter> rodsCharacters = userBd.getRodsCharacters();
        //rodsCharacters.add(existedRods);
        //userBd.setRodsCharacters(rodsCharacters);
        service.update(userBd);
        session.setAttribute("user",userBd);
        resp.sendRedirect("/WEB-INF/pages/user-cabinet.jsp");
        ServletContext servletContext = getServletContext();
        RequestDispatcher dispatcher = servletContext.getRequestDispatcher("/WEB-INF/pages/user-cabinet.jsp");
        dispatcher.forward(req, resp);
    }
}
