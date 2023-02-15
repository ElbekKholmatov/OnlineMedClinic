package dev.sheengo.onlinemedclinic.controller;

import dev.sheengo.onlinemedclinic.dao.UserDAO;
import dev.sheengo.onlinemedclinic.domains.User;
import jakarta.servlet.*;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;

import java.io.IOException;

@WebServlet(name = "SetAdminServlet", value = "/superAmin/setAdmin")
public class SetAdminServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.getRequestDispatcher("/views/adminPages/admin/SetAdminPage.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String username = request.getParameter("set_username");
        UserDAO userDAO = new UserDAO();
        User user = userDAO.getByEmail(username);
        user.setRole(User.UserRole.ADMIN);
        userDAO.update(user);
        response.sendRedirect("/superAdmin/main");
    }
}
