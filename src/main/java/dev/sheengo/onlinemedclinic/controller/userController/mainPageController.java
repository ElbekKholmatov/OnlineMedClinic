package dev.sheengo.onlinemedclinic.controller.userController;

import dev.sheengo.onlinemedclinic.services.UserService;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import java.io.IOException;

@WebServlet(name = "mainPageController", value = "/user/main")
public class mainPageController extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession session = request.getSession();
        HttpServletRequest getRequest = UserService.getInstance().get(request).getRequest();
        getRequest.setAttribute("id", session.getAttribute("id"));
        getRequest.setAttribute("firstname", session.getAttribute("firstname"));
        getRequest.getRequestDispatcher("/views/Home.jsp").forward(getRequest, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
