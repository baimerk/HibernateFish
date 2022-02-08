package com.fish.hibernatefish.controller;

import com.fish.hibernatefish.config.ConfigSessionFactory;
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

    private void viewAction(HttpServletRequest req,HttpServletResponse resp)throws ServletException,IOException{
        String search = req.getParameter("search");
        List<RodsCharacter> rodsCharacters = download.findAllType();
        req.setAttribute("listRods", rodsCharacters);
        ServletContext servletContext = getServletContext();
        RequestDispatcher dispatcher = servletContext.getRequestDispatcher("/WEB-INF/pages/arena-rod.jsp");
        dispatcher.forward(req,resp);
    }

    private void viewBB(HttpServletRequest req,HttpServletResponse resp)throws ServletException,IOException{
        //String search = req.getParameter("search");
        List<RodsCharacter> rodsCharacters = download.findAllType();
        req.setAttribute("listRods", rodsCharacters);
        ServletContext servletContext = getServletContext();
        RequestDispatcher dispatcher = servletContext.getRequestDispatcher("/WEB-INF/pages/arena-rod.jsp");
        dispatcher.forward(req,resp);
    }

    private void viewBlackSwan(HttpServletRequest req,HttpServletResponse resp)throws ServletException,IOException{
        Session session = ConfigSessionFactory.getSessionFactory().openSession();
        List<RodsCharacter> rodsCharacters = session.createQuery("from RodsCharacter where rods = 1").getResultList();
    }

    private void viewCobalt(HttpServletRequest req, HttpServletResponse resp)throws ServletException,IOException{
        Session session = ConfigSessionFactory.getSessionFactory().openSession();
        List<RodsCharacter> rodsCharacters = session.createQuery("from RodsCharacter where rods = 2").getResultList();
    }

    private void viewCreed(HttpServletRequest req,HttpServletResponse resp)throws ServletException,IOException{}

    private void viewImpulse(HttpServletRequest req,HttpServletResponse resp)throws ServletException,IOException{}

    private void viewNeoBreeze(HttpServletRequest req,HttpServletResponse resp)throws ServletException,IOException{}

    private void viewProfessional(HttpServletRequest req,HttpServletResponse resp)throws ServletException,IOException{}

    private void viewRapid(HttpServletRequest req,HttpServletResponse resp)throws ServletException,IOException{}

    private void addToBuy(HttpServletRequest req, HttpServletResponse resp)throws ServletException, IOException{
        HttpSession session = req.getSession();
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
        User user = (User) session.getAttribute("user");
        User userBd = service.findById(user.getId());
        List<RodsCharacter> rodsCharacters = userBd.getRodsCharacters();
        rodsCharacters.add(rodsCharacter);
        userBd.setRodsCharacters(rodsCharacters);
        service.update(userBd);
        session.setAttribute("user",userBd);
        resp.sendRedirect("/WEB-INF/pages/user-cabinet.jsp");
    }
}
