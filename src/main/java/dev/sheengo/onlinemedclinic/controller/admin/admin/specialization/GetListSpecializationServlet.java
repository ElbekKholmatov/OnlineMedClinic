package dev.sheengo.onlinemedclinic.controller.admin.admin.specialization;

import dev.sheengo.onlinemedclinic.services.SpecializationService;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;

@WebServlet(name = "GetListSpecializationServlet", value = "/admin/specialization/getList")
public class GetListSpecializationServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setAttribute("specializations", SpecializationService.getInstance().getAll());
        request.getRequestDispatcher("/views/adminPages/specialization/SpecializationList.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    }
}
