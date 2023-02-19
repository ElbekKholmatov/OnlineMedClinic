package dev.sheengo.onlinemedclinic.controller.userController.order;

import dev.sheengo.onlinemedclinic.services.OrderService;
import jakarta.servlet.*;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;

import java.io.IOException;

@WebServlet(name = "SelectDoctorController", value = "/user/order/selectDoctor")
public class SelectDoctorController extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        OrderService.getInstance().service(request).getRequest()
                .getRequestDispatcher("/views/selectDate.jsp").forward(request, response);
    }
}