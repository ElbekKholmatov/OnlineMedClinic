package dev.sheengo.onlinemedclinic.controller.adminPages.admin;

import dev.sheengo.onlinemedclinic.dao.UserDAO;
import dev.sheengo.onlinemedclinic.domains.User;
import dev.sheengo.onlinemedclinic.services.Response;
import jakarta.servlet.*;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;

import java.io.IOException;

@WebServlet(name = "SetAdminServlet", value = "/superAmin/setAdmin")
public class SetAdminServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        RequestDispatcher dispatcher = request.getRequestDispatcher("/views/adminPages/admin/SetAdmin.jsp");
        dispatcher.forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String username = request.getParameter("set_username");
        UserDAO userDAO = new UserDAO();
        User user = User.builder()
                .username(username)
                .role(User.UserRole.USER)
                .build();
        userDAO.update(user);
        response.sendRedirect("/superAdmin/main");
    }
}
