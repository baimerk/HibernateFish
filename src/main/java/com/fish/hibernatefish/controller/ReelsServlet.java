package com.fish.hibernatefish.controller;

import com.fish.hibernatefish.config.ConfigSessionFactory;
import com.fish.hibernatefish.model.Reels;
import com.fish.hibernatefish.service.BaseService;
import com.fish.hibernatefish.service.impl.ReelsServiceImpl;
import org.hibernate.Session;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@WebServlet(urlPatterns = {"/list-of-reels/*"})
public class ReelsServlet extends HttpServlet {
    private BaseService<Reels> reelsBaseService = new ReelsServiceImpl();

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
        resp.sendRedirect("overviewArena");
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
}
