package dev.sheengo.onlinemedclinic.controller.admin.supreme.adminCRUD;

import dev.sheengo.onlinemedclinic.domains.User;
import dev.sheengo.onlinemedclinic.services.UserService;
import jakarta.servlet.*;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;

import java.io.IOException;
import java.util.List;

@WebServlet(name = "DeleteAdminServlet", value = "/superAdmin/deleteAdmin")
public class DeleteAdminServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        List<User> admins = UserService.getInstance().getAllAdmins();
        request.setAttribute("admins", admins);
        request.getRequestDispatcher("/views/adminPages/admin/DeleteAdmin.jsp").forward(request, response);

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        UserService.getInstance().updateDeleteAdmin(request).getRequest().getRequestDispatcher("/views/adminPages/SuperAdminPage.jsp").forward(request, response);

    }
}
