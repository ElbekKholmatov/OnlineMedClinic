package dev.sheengo.onlinemedclinic.controller.auth;

import jakarta.servlet.*;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;

import java.io.IOException;

@WebServlet(name = "LogOut", value = "/logOut")
public class LogOut extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setAttribute("firstName", request.getSession().getAttribute("firstname"));
        request.getRequestDispatcher("/views/auth/logOut.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.getSession().invalidate();

        Cookie cookie = new Cookie("id", "");
        cookie.setPath("/");
        cookie.setMaxAge(0);

        response.addCookie(cookie);
        response.sendRedirect("/logIn");
    }
}
