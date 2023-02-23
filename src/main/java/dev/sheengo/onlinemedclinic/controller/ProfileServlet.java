package dev.sheengo.onlinemedclinic.controller;

import dev.sheengo.onlinemedclinic.dao.UserDAO;
import dev.sheengo.onlinemedclinic.domains.User;
import dev.sheengo.onlinemedclinic.services.UserService;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;

@WebServlet(name = "ProfileServlet", value = "/user/profile")
public class ProfileServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String userId = request.getSession().getAttribute("id").toString();
        User user = UserDAO.getInstance().get(Integer.parseInt(userId));
        System.out.println(user);
        request.setAttribute("user", user);
        request.getSession().setAttribute("user", user);
        request.getRequestDispatcher("/profile/profile.jsp").forward(request, response);

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        UserService.getInstance().update(request).getRequest().getRequestDispatcher("/profile/profile.jsp").forward(request, response);
    }
}
