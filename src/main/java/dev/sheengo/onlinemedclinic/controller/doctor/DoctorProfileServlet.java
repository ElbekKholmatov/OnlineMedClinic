package dev.sheengo.onlinemedclinic.controller.doctor;

import dev.sheengo.onlinemedclinic.dao.DoctorDAO;
import dev.sheengo.onlinemedclinic.dao.UserDAO;
import dev.sheengo.onlinemedclinic.services.SpecializationService;
import jakarta.servlet.*;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;

import java.io.IOException;

@WebServlet(name = "DoctorProfileServlet", value = "/doc/profile")
public class DoctorProfileServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        UserDAO userDAO = UserDAO.getInstance();
        request.setAttribute("user", userDAO.get(1)); // 1 ni orniga sessiondagi user id bervoriladi
        request.setAttribute("doctor", userDAO.get(1)); // 1 ni orniga sessiondagi doctor id bervoriladi
        request.setAttribute("specialization", SpecializationService.getInstance().get(1)); // 1 ni orniga sessiondagi doctorni id bervoriladi
        RequestDispatcher dispatcher = request.getRequestDispatcher("/views/doctorPages/profile.jsp");
        dispatcher.forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
