package dev.sheengo.onlinemedclinic.controller.admin.admin.dr;

import dev.sheengo.onlinemedclinic.services.SpecializationService;
import dev.sheengo.onlinemedclinic.services.UserService;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;

@WebServlet(name = "UpdateDrServlet", value = "/admin/dr/update/*")
public class UpdateDrServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        request.setAttribute("doctor", UserService.getInstance().get(request).getDomain());
        request.setAttribute("specializations", SpecializationService.getInstance().getAll());
        request.getRequestDispatcher("/views/adminPages/dr/UpdateDr.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        UserService.getInstance().updateSetAdmin(request).getRequest().getRequestDispatcher("/views/adminPages/Admin.jsp").forward(request, response);
    }
}
