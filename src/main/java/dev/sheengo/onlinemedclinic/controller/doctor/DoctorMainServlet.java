package dev.sheengo.onlinemedclinic.controller.doctor;

import dev.sheengo.onlinemedclinic.services.DoctorService;
import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;

@WebServlet(name = "DoctorMainServlet", value = "/dr/main")
public class DoctorMainServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpServletRequest getRequest = DoctorService.getInstance().get(request).getRequest();
        RequestDispatcher dispatcher = getRequest.getRequestDispatcher("/views/dr/main.jsp");
        dispatcher.forward(getRequest, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
