package dev.sheengo.onlinemedclinic.controller.admin.supreme.adminCRUD;

import dev.sheengo.onlinemedclinic.services.UserService;
import jakarta.servlet.*;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;

import java.io.IOException;

@WebServlet(name = "SetAdminServlet", value = "/superAdmin/setAdmin")
public class SetAdminServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        RequestDispatcher dispatcher = request.getRequestDispatcher("/views/adminPages/admin/SetAdmin.jsp");
        dispatcher.forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        UserService.getInstance().updateSetAdmin(request).getRequest().getRequestDispatcher("/views/adminPages/SuperAdminPage.jsp").forward(request, response);
    }
}
