package dev.sheengo.onlinemedclinic.controller.auth;

import dev.sheengo.onlinemedclinic.configs.ThreadSafeCollections;
import dev.sheengo.onlinemedclinic.domains.User;
import dev.sheengo.onlinemedclinic.services.Response;
import dev.sheengo.onlinemedclinic.services.UserService;
import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.*;

import java.io.IOException;

@WebServlet(name = "LogIn", value = "/logIn")
public class LogIn extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
//        String next = req.getParameter("next");
//        System.out.println(next);
//        req.setAttribute("next", next);
        RequestDispatcher dispatcher = req.getRequestDispatcher("/views/auth/logIn.jsp");
        dispatcher.forward(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        Response<User> response = UserService.getInstance().service(req);
        try {
            resp.addCookie(response.getCookie());
            resp.sendRedirect(response.getReturnPage());
        } catch (Exception e){
            e.printStackTrace();
            RequestDispatcher dispatcher = req.getRequestDispatcher("/views/errors/error.jsp");
            dispatcher.forward(req, resp);
        }
    }
}