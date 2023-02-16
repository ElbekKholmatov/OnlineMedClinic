package dev.sheengo.onlinemedclinic.controller.doctor;

import dev.sheengo.onlinemedclinic.dao.DoctorDAO;
import dev.sheengo.onlinemedclinic.dao.OrderDAO;
import dev.sheengo.onlinemedclinic.domains.Order;
import jakarta.servlet.*;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;

import java.io.IOException;

@WebServlet(name = "DoctorScheduleServlet", value = "/doc/schedule")
public class DoctorScheduleServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // DoctorDAO doctorDAO = DoctorDAO.getInstance();
        // request.setAttribute("user", doctorDAO.findUserByUserId(1)); // 1 ni orniga sessiondagi user id bervoriladi
        // request.setAttribute("doctor", doctorDAO.findDoctorById(1)); // 1 ni orniga sessiondagi doctor id bervoriladi
        // request.setAttribute("specialization", doctorDAO.findSpecializationSpecializationId(1)); // 1 ni orniga sessiondagi doctorni id bervoriladi


        OrderDAO orderDAO = OrderDAO.getInstance();
        request.setAttribute("orders", orderDAO.findAllOrdersByDoctorId(1)); // 1 ni orniga sessiondagi doctor id bervoriladi

        RequestDispatcher dispatcher = request.getRequestDispatcher("/views/doctorPages/schedule.jsp");
        dispatcher.forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
