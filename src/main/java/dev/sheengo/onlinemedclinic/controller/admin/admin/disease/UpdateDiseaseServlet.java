package dev.sheengo.onlinemedclinic.controller.admin.admin.disease;

import dev.sheengo.onlinemedclinic.services.DiseaseService;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;

@WebServlet(name = "UpdateDiseaseServlet", value = "/admin/disease/update/*")
public class UpdateDiseaseServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setAttribute("disease", DiseaseService.getInstance().get(Integer.parseInt(request.getPathInfo().substring(1))));
        request.getRequestDispatcher("/views/adminPages/diseases/Updatediseases.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        DiseaseService.getInstance().update(request).getRequest().getRequestDispatcher("/views/adminPages/Admin.jsp").forward(request, response);
        response.sendRedirect("/admin/disease");
    }
}