package dev.sheengo.onlinemedclinic.controller.admin.admin.dr;

import dev.sheengo.onlinemedclinic.services.UserService;
import jakarta.servlet.*;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;

import java.io.IOException;

@WebServlet(name = "SetDrServlet", value = "/admin/dr/create")
public class SetDrServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setAttribute("specializations", UserService.getInstance().getAll());
        request.getRequestDispatcher("/views/adminPages/dr/SetDr.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        UserService.getInstance().updateSetDr(request).getRequest().getRequestDispatcher("/views/adminPages/Admin.jsp").forward(request, response);
    }
}
