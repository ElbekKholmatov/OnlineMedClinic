package dev.sheengo.onlinemedclinic.controller.doctor;

import dev.sheengo.onlinemedclinic.dao.DoctorDAO;
import jakarta.servlet.*;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;

import java.io.IOException;

@WebServlet(name = "DoctorUpdateServlet", value = "/doc/update")
public class DoctorUpdateServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        DoctorDAO doctorDAO = DoctorDAO.getInstance();
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
