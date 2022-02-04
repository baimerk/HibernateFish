package com.fish.hibernatefish.controller;

import com.fish.hibernatefish.model.Reels;
import com.fish.hibernatefish.model.RodsCharacter;
import com.fish.hibernatefish.service.BaseService;
import com.fish.hibernatefish.service.impl.RodsServiceImpl;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@WebServlet(urlPatterns = {"/list-of-rods/*"})
public class RodsServlet extends HttpServlet {
    private BaseService<RodsCharacter> download = new RodsServiceImpl();

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String action = req.getPathInfo();

        try {
            switch (action) {
                //case "/registration" -> registrationForm(req, resp);
                case "/action" -> viewAction(req,resp);

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
        RequestDispatcher dispatcher = servletContext.getRequestDispatcher("/WEB-INF/pages/manage-form2.jsp");
        dispatcher.forward(req,resp);
    }
}
