package dev.sheengo.onlinemedclinic.controller.admin.admin.disease;

import dev.sheengo.onlinemedclinic.services.DiseaseService;
import dev.sheengo.onlinemedclinic.services.SpecializationService;
import jakarta.servlet.*;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;

import java.io.IOException;

@WebServlet(name = "CreateDiseaseServlet", value = "/admin/disease/create")
public class CreateDiseaseServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setAttribute("specializations", SpecializationService.getInstance().getAll());
        RequestDispatcher dispatcher = request.getRequestDispatcher("/views/adminPages/diseases/Createdisease.jsp");
        dispatcher.forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        DiseaseService.getInstance().save(request).getRequest().getRequestDispatcher("/views/adminPages/Admin.jsp").forward(request, response);
    }
}
