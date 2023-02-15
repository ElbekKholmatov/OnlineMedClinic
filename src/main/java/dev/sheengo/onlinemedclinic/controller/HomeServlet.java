package dev.sheengo.onlinemedclinic.controller;

import dev.sheengo.onlinemedclinic.dao.UserDAO;
import dev.sheengo.onlinemedclinic.domains.User;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.SequenceGenerator;
import jakarta.servlet.*;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;

import java.io.IOException;
import java.time.LocalDateTime;

@WebServlet(name = "HomeServlet", value = "")
public class HomeServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        RequestDispatcher requestDispatcher = request.getRequestDispatcher("/views/Home.jsp");
        requestDispatcher.forward(request, response);
        //method for testing

//
//
//        UserDAO userDAO = new UserDAO();
//        userDAO.save(User.builder()
//                        .firstName("Asror")
//                        .lastName("dwd")
//                        .phone("ded")
//                        .username("dwd")//                        .address("dw")
//                        .passport("dwd")
//                        .birthdate(LocalDateTime.now())
//                .build());
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.sendError(405, "Method Not Supported");

    }
}
