package dev.sheengo.onlinemedclinic.controller.userController.order;

import dev.sheengo.onlinemedclinic.services.OrderService;
import jakarta.servlet.*;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;

import java.io.IOException;

@WebServlet(name = "ShowOrderController", value = "/user/order/show")
public class ShowOrderController extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setAttribute("firstName", request.getSession().getAttribute("firstname"));

        OrderService.getInstance().showOrdersByUser(request);
        request.getRequestDispatcher("/views/userPages/showOrders.jsp").forward(request, response);
    }
}
