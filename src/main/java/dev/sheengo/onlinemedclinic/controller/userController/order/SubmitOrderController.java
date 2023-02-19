package dev.sheengo.onlinemedclinic.controller.userController.order;

import dev.sheengo.onlinemedclinic.services.OrderService;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;

@WebServlet(name = "SubmitOrderController", value = "/user/order/submit")
public class SubmitOrderController extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        OrderService.getInstance().save(request).getRequest()
                .getRequestDispatcher("/views/submit.jsp").forward(request, response);
    }
}
