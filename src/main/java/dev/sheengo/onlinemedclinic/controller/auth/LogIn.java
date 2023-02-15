package dev.sheengo.onlinemedclinic.controller.auth;

import dev.sheengo.onlinemedclinic.configs.ThreadSafeCollections;
import dev.sheengo.onlinemedclinic.domains.User;
import dev.sheengo.onlinemedclinic.services.UserService;
import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.*;

import java.io.IOException;

@WebServlet(name = "logIn", value = "/logIn")
public class LogIn extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
//        String next = req.getParameter("next");
//        System.out.println(next);
//        req.setAttribute("next", next);
        RequestDispatcher dispatcher = req.getRequestDispatcher("/views/auth/logIn.jsp");
        dispatcher.forward(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String email = req.getParameter("username");

        User user = UserService.getInstance().get(email);

        try {
            HttpSession session = req.getSession();
            session.setMaxInactiveInterval(60 * 60 * 4);

            session.setAttribute("firstname", user.getFirstName());
            session.setAttribute("id", user.getId());
            session.setAttribute("role", user.getRole());

            Cookie id = new Cookie("id", String.valueOf(user.getId()));

            id.setPath("/");
            id.setMaxAge(60 * 60 * 24);

            if ( !ThreadSafeCollections.id.contains(user.getId()) ) {
                ThreadSafeCollections.id.add(user.getId());
            }

            resp.sendRedirect((user.getRole().equals(User.UserRole.ADMIN)) ? "/admin/main"
                    : (user.getRole().equals(User.UserRole.DOCTOR)) ? "/doctor/main"
                    : "user/main");

        } catch (Exception e) {
            e.printStackTrace();
            RequestDispatcher dispatcher = req.getRequestDispatcher("/views/errors/error.jsp");
            dispatcher.forward(req, resp);
        }
    }
}