package dev.sheengo.onlinemedclinic.controller.adminPages.issues;

import dev.sheengo.onlinemedclinic.services.DiseaseService;
import dev.sheengo.onlinemedclinic.services.SpecializationService;
import jakarta.servlet.*;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;

import java.io.IOException;

@WebServlet(name = "CreateDissesServlet", value = "/admin/issue/create")
public class CreateDissesServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setAttribute("specializations", SpecializationService.getInstance().getAll());
        RequestDispatcher dispatcher = request.getRequestDispatcher("/views/adminPages/issues/CreateDisses.jsp");
        dispatcher.forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        DiseaseService.getInstance().save(request).getRequest().getRequestDispatcher("/views/adminPages/Admin.jsp").forward(request, response);
    }
}
