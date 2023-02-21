package dev.sheengo.onlinemedclinic.controller.admin.admin.dr;

import dev.sheengo.onlinemedclinic.domains.User;
import dev.sheengo.onlinemedclinic.services.DoctorService;
import dev.sheengo.onlinemedclinic.services.UserService;
import jakarta.servlet.*;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;

import java.io.IOException;
import java.util.List;

@WebServlet(name = "DeleteDrServlet", value = "/admin/dr/delete/*")
public class DeleteDrServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        User doctor = UserService.getInstance().get(Integer.parseInt(request.getPathInfo().substring(1))).getDomain();
        request.setAttribute("doctor", doctor);
        request.getRequestDispatcher("/views/adminPages/dr/DeleteDr.jsp").forward(request, response);

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        DoctorService.getInstance().delete(request);
        UserService.getInstance().deleteDr(request).getRequest().getRequestDispatcher("/views/adminPages/Admin.jsp").forward(request, response);

    }
}
