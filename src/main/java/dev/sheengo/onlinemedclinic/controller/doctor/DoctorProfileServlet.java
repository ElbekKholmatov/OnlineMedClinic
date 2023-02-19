package dev.sheengo.onlinemedclinic.controller.doctor;

import dev.sheengo.onlinemedclinic.dao.DoctorDAO;
import dev.sheengo.onlinemedclinic.dao.UserDAO;
import dev.sheengo.onlinemedclinic.domains.Doctor;
import dev.sheengo.onlinemedclinic.services.DoctorService;
import dev.sheengo.onlinemedclinic.services.Response;
import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;

@WebServlet(name = "DoctorProfileServlet", value = "/dr/profile")
public class DoctorProfileServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpServletRequest getRequest = DoctorService.getInstance().get(request).getRequest();
        RequestDispatcher dispatcher = getRequest.getRequestDispatcher("/views/dr/profile.jsp");
        dispatcher.forward(getRequest, response);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
        Response<Doctor> response = DoctorService.getInstance().service(req);
        try {
            res.addCookie(response.getCookie());
            res.sendRedirect(response.getReturnPage());
        } catch (Exception e) {
            e.printStackTrace();
            RequestDispatcher dispatcher = req.getRequestDispatcher("/views/errors/error.jsp");
            dispatcher.forward(req, res);
        }
    }
}
