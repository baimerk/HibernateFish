package com.fish.hibernatefish.controller;

import com.fish.hibernatefish.config.ConfigSessionFactory;
import com.fish.hibernatefish.model.Conf;
import com.fish.hibernatefish.model.Reels;

import com.fish.hibernatefish.model.RodsCharacter;
import com.fish.hibernatefish.model.User;
import com.fish.hibernatefish.service.BaseService;
import com.fish.hibernatefish.service.impl.ReelsServiceImpl;
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

@WebServlet(urlPatterns = {"/list-of-reels/*"})
public class ReelsServlet extends HttpServlet {
    private BaseService<Reels> reelsBaseService = new ReelsServiceImpl();
    private BaseService<User> service = new UserServiceImpl();
    private BaseService<RodsCharacter> power = new RodsServiceImpl();

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException {
        String action = req.getPathInfo();

        try {
            switch (action) {
                //case "/registration" -> registrationForm(req, resp);
                case "/overview_arena" -> overViewArena(req,resp);
                case "/overview_bluebird" -> overViewBB(req,resp);
                case "/overview_hurricane" -> overViewHurricane(req,resp);
                case "/overview_sapphire" -> overViewSapphire(req,resp);
                case "/overview_sirius" -> overViewSirius(req,resp);
                case "/overview_x1" -> overViewX1(req,resp);
                case "/add-to-buy" -> addToBuy(req,resp);
                case "/edit-reel" -> showEditFormReel(req,resp);
                case "/update-reel" -> updateReel(req,resp);
                case "/add-reel" -> addReel(req,resp);
                case "/exp" -> expNew(req,resp);
                case "/list-reels" -> listReels(req,resp);

                default -> mainMenuReels(req, resp);
            }
        } catch (ServletException | IOException e) {
            throw new ServletException(e);
        }
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        doGet(req, resp);
    }

    private void listReels(HttpServletRequest req,HttpServletResponse resp)throws ServletException,IOException{
        String search = req.getParameter("search");
        List<Reels> reels = reelsBaseService.findAll();
        List<RodsCharacter> rodsCharacters = power.findAll();
        req.setAttribute("listRods", rodsCharacters);
        req.setAttribute("listReels", reels);
        ServletContext servletContext = getServletContext();
        RequestDispatcher dispatcher = servletContext.getRequestDispatcher("/WEB-INF/pages/manage-form-reels.jsp");
        dispatcher.forward(req,resp);
    }

    private void addReel(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        HttpSession session = req.getSession();
        String size = req.getParameter("size");
        String nylonLine = req.getParameter("nylonLine");
        String ballBearings = req.getParameter("ballBearings");
        String gearRatio = req.getParameter("gearRatio");
        String weight = req.getParameter("weight");
        String lineRetrieve = req.getParameter("lineRetrieve");
        String spoolMaterial = req.getParameter("spoolMaterial");
        String price = req.getParameter("price");
        Conf model = Conf.valueOf(req.getParameter("model"));
        Reels reels = new Reels(size, nylonLine, ballBearings, gearRatio, weight, lineRetrieve, spoolMaterial, price, model);
        reels.setSize(size);
        reels.setNylonLine(nylonLine);
        reels.setBallBearings(ballBearings);
        reels.setGearRatio(gearRatio);
        reels.setWeight(weight);
        reels.setSpoolMaterial(spoolMaterial);
        reels.setLineRetrieve(lineRetrieve);
        reels.setPrice(price);
        boolean isAdded = reelsBaseService.create(reels);
        if (isAdded) {
            session.setAttribute("size", reels);
            session.setAttribute("reelModel", reels);
        }
        resp.sendRedirect("list-reels");
    }

    private void expNew(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        List<Reels> reels = reelsBaseService.findAll();
        req.setAttribute("listReels", reels);
        String search = req.getParameter("search"); //необходим для реализации поиска на странице
        ServletContext servletContext = getServletContext();
        RequestDispatcher dispatcher = servletContext.getRequestDispatcher("/WEB-INF/pages/exp.jsp");
        dispatcher.forward(req,resp);
    }

    private void mainMenuReels(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String search = req.getParameter("search"); //необходим для реализации поиска на странице
        ServletContext servletContext = getServletContext();
        RequestDispatcher dispatcher = servletContext.getRequestDispatcher("/WEB-INF/pages/list-of-reels.jsp");
        dispatcher.forward(req,resp);
    }

    private void overViewArena(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException{
        List<Reels> reels = reelsBaseService.findAllType();
        req.setAttribute("listReels", reels);
        ServletContext servletContext = getServletContext();
        RequestDispatcher dispatcher = servletContext.getRequestDispatcher("/WEB-INF/pages/overview-arena.jsp");
        dispatcher.forward(req,resp);
    }

    private void overViewBB(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException{
        List<Reels> reels = reelsBaseService.findAllType1();
        req.setAttribute("listReels", reels);
        ServletContext servletContext = getServletContext();
        RequestDispatcher dispatcher = servletContext.getRequestDispatcher("/WEB-INF/pages/overview-bluebird.jsp");
        dispatcher.forward(req, resp);
    }

    private void overViewHurricane(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException{
        List<Reels> reels = reelsBaseService.findAllType2();
        req.setAttribute("listReels", reels);
        ServletContext servletContext = getServletContext();
        RequestDispatcher dispatcher = servletContext.getRequestDispatcher("/WEB-INF/pages/overview-hurricane.jsp");
        dispatcher.forward(req, resp);
    }

    private void overViewSapphire(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException{
        Session session = ConfigSessionFactory.getSessionFactory().openSession();
        List<Reels> reels = session.createQuery("from Reels where model = 3").getResultList();
        req.setAttribute("listReels", reels);
        ServletContext servletContext = getServletContext();
        RequestDispatcher dispatcher = servletContext.getRequestDispatcher("/WEB-INF/pages/overview-sapphire.jsp");
        dispatcher.forward(req, resp);
        resp.sendRedirect("overviewArena");
    }

    private void overViewSirius(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException{
        Session session = ConfigSessionFactory.getSessionFactory().openSession();
        List<Reels> reels = session.createQuery("from Reels where model = 4").getResultList();
        req.setAttribute("listReels", reels);
        ServletContext servletContext = getServletContext();
        RequestDispatcher dispatcher = servletContext.getRequestDispatcher("/WEB-INF/pages/overview-sirius.jsp");
        dispatcher.forward(req, resp);
        resp.sendRedirect("overviewArena");
    }

    private void overViewX1(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException{
        Session session = ConfigSessionFactory.getSessionFactory().openSession();
        List<Reels> reels = session.createQuery("from Reels where model = 5").getResultList();
        req.setAttribute("listReels", reels);
        ServletContext servletContext = getServletContext();
        RequestDispatcher dispatcher = servletContext.getRequestDispatcher("/WEB-INF/pages/overview-x1.jsp");
        dispatcher.forward(req, resp);
        resp.sendRedirect("overviewArena");
    }

    private void showEditFormReel(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        int id = Integer.parseInt(req.getParameter("id"));
        Reels existedReel = reelsBaseService.findById(id);
        req.setAttribute("existedReel", existedReel);
        ServletContext servletContext = getServletContext();
        RequestDispatcher dispatcher = servletContext.getRequestDispatcher("/WEB-INF/pages/edit-reel.jsp");
        dispatcher.forward(req, resp);
        resp.sendRedirect("manage");
    }

    private void updateReel(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        int id = Integer.parseInt(req.getParameter("id"));
        String size = req.getParameter("size");
        String nylonLine = req.getParameter("nylonLine");
        String ballBearings = req.getParameter("ballBearings");
        String gearRatio = req.getParameter("gearRatio");
        String weight = req.getParameter("weight");
        String spoolMaterial = req.getParameter("spoolMaterial");
        String lineRetrieve = req.getParameter("lineRetrieve");
        String price = req.getParameter("price");
        Conf model = Conf.valueOf(req.getParameter("model"));
        Reels reels = new Reels(id, size, nylonLine, ballBearings, gearRatio, weight, spoolMaterial, lineRetrieve, price, model);
        reels.setId(id);
        reels.setSize(size);
        reels.setNylonLine(nylonLine);
        reels.setBallBearings(ballBearings);
        reels.setGearRatio(gearRatio);
        reels.setWeight(weight);
        reels.setSpoolMaterial(spoolMaterial);
        reels.setLineRetrieve(lineRetrieve);
        reels.setPrice(price);
        reels.setModel(model);
        reelsBaseService.update(reels);
        resp.sendRedirect("list-reels");
    }

    private void addToBuy(HttpServletRequest req, HttpServletResponse resp)throws ServletException, IOException{
        HttpSession session = req.getSession();
        int id = Integer.parseInt(req.getParameter("id"));
        String size = req.getParameter("size");
        String nylonLine = req.getParameter("nylonLine");
        String ballBearings = req.getParameter("ballBearings");
        String gearRatio = req.getParameter("gearRatio");
        String weight = req.getParameter("weight");
        String lineRetrieve = req.getParameter("lineRetrieve");
        String spoolMaterial = req.getParameter("spoolMaterial");
        String price = req.getParameter("price");
        Conf model = Conf.valueOf(req.getParameter("model"));
        Reels reels = new Reels(id, size, nylonLine, ballBearings, gearRatio, weight, lineRetrieve, spoolMaterial, price, model);
        User user = (User) session.getAttribute("user");
        User userBd = service.findById(user.getId());
        //List<Reels> reelsList = userBd.getReelsList();
        //reelsList.add(reels);
        //reels.setId(id);
        //reels.setSize(size);
        //reels.setNylonLine(nylonLine);
        //reels.setBallBearings(ballBearings);
        //reels.setGearRatio(gearRatio);
        //reels.setWeight(weight);
        //reels.setLineRetrieve(lineRetrieve);
        //reels.setSpoolMaterial(spoolMaterial);
        //reels.setPrice(price);
        //reels.setModel(model);
        //userBd.setReelsList(reelsList);
        service.update(userBd);
        session.setAttribute("user",userBd);
        resp.sendRedirect("/WEB-INF/pages/user-cabinet.jsp");
    }

}
