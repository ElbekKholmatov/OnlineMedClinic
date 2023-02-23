package dev.sheengo.onlinemedclinic.controller;

import dev.sheengo.onlinemedclinic.dao.UserDAO;
import dev.sheengo.onlinemedclinic.domains.User;
import jakarta.servlet.*;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;

import java.io.IOException;

@WebServlet(name = "ChangePasswordServlet", value = "/change-password")
public class ChangePasswordServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession session = request.getSession();
//        response.setBufferSize(1024 * 16);
        Integer userId = Integer.parseInt((session.getAttribute("id").toString()));
        User user = UserDAO.getInstance().get(userId);
        request.setAttribute("fullname", user.getFirstName() + " " + user.getLastName());
//        request.setAttribute("user", user);
        request.setAttribute("user_id", user.getId());
        try {
            request.getRequestDispatcher("/profile/change-password.jsp").forward(request, response);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
//        UserService.changePassword(request, response);
        try {
            String userId = request.getParameter("user_id");
            String newPassword = request.getParameter("new_password");

            UserDAO instance = UserDAO.getInstance();
            User user = instance.get(Integer.parseInt(userId));
            user.setPassword(newPassword);
            instance.update(user);
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            request.setAttribute("success_message", "Password updated successfully");
//            response.sendRedirect("logout");
            request.getRequestDispatcher("/profile/profile.jsp").forward(request, response);
        }

    }
}
