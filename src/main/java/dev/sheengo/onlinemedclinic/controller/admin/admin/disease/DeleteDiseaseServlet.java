package dev.sheengo.onlinemedclinic.controller.admin.admin.disease;

import dev.sheengo.onlinemedclinic.services.DiseaseService;
import dev.sheengo.onlinemedclinic.services.SpecializationService;
import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;

@WebServlet(name = "DeleteDiseaseServlet", value = "/admin/disease/delete/*")
public class DeleteDiseaseServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setAttribute("disease", DiseaseService.getInstance().get(request).getDomain());
        RequestDispatcher dispatcher = request.getRequestDispatcher("/views/adminPages/issues/DeleteIssues.jsp");
        dispatcher.forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        DiseaseService.getInstance().delete(request).getRequest().getRequestDispatcher("/views/adminPages/Admin.jsp").forward(request, response);
    }
}
