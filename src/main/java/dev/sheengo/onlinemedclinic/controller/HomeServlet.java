package dev.sheengo.onlinemedclinic.controller;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;

@WebServlet(name = "HomeServlet", value = "/home")
public class HomeServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
//        HttpSession session = request.getSession();
//        HttpServletRequest getRequest = UserService.getInstance().get(request).getRequest();
//        getRequest.setAttribute("id", session.getAttribute("id"));
//        getRequest.setAttribute("firstname", session.getAttribute("firstname"));
//        request.getRequestDispatcher("/views/Home.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.sendError(405, "Method Not Supported");

    }
}
