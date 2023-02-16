package dev.sheengo.onlinemedclinic.controller.doctor;

import dev.sheengo.onlinemedclinic.dao.DoctorDAO;
import dev.sheengo.onlinemedclinic.dao.UserDAO;
import jakarta.servlet.*;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;

import java.io.IOException;

@WebServlet(name = "DoctorMainServlet", value = "/doc/main")
public class DoctorMainServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        DoctorDAO doctorDAO = DoctorDAO.getInstance();
        request.setAttribute("user", UserDAO.getInstance().get(1)); // 1 ni orniga sessiondagi user id bervoriladi
        request.setAttribute("doctor", doctorDAO.get(1)); // 1 ni orniga sessiondagi doctor id bervoriladi

        RequestDispatcher dispatcher = request.getRequestDispatcher("/views/doctorPages/main.jsp");
        dispatcher.forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
