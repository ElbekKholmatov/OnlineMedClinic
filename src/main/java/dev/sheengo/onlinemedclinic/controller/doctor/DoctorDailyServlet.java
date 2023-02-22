package dev.sheengo.onlinemedclinic.controller.doctor;

import dev.sheengo.onlinemedclinic.domains.Doctor;
import dev.sheengo.onlinemedclinic.services.DoctorService;
import dev.sheengo.onlinemedclinic.services.OrderService;
import dev.sheengo.onlinemedclinic.services.Response;
import jakarta.servlet.*;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;

import java.io.IOException;

@WebServlet(name = "DoctorDailyServlet", value = "/dr/daily")
public class DoctorDailyServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        HttpServletRequest getRequest = OrderService.getInstance().getDailyOrders(request).getRequest();

        RequestDispatcher dispatcher = getRequest.getRequestDispatcher("/views/dr/daily.jsp");
        dispatcher.forward(getRequest, response);

    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
        Response<Doctor> response = DoctorService.getInstance().service(req);
//        try {
//            res.addCookie(response.getCookie());
//            res.sendRedirect(response.getReturnPage());
//        } catch (Exception e) {
//            e.printStackTrace();
//            RequestDispatcher dispatcher = req.getRequestDispatcher("/views/errors/error.jsp");
//            dispatcher.forward(req, res);
//        }
    }
}
