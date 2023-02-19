package dev.sheengo.onlinemedclinic.controller.admin.supreme.adminCRUD;

import dev.sheengo.onlinemedclinic.services.UserService;
import jakarta.servlet.*;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;

import java.io.IOException;

@WebServlet(name = "GetListAdminServlet", value = "/superAdmin/getListDR")
public class GetListAdminServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setAttribute("admins", UserService.getInstance().getAllAdmins());
        request.getRequestDispatcher("/views/adminPages/admin/ListAdmin.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
