package dev.sheengo.onlinemedclinic.filters;

import dev.sheengo.onlinemedclinic.validators.UserValidator;
import jakarta.servlet.*;
import jakarta.servlet.annotation.*;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;
import java.util.HashMap;
import java.util.Map;

@WebFilter(filterName = "ProfilePageFilter", urlPatterns = {"/user/profile"})
public class ProfilePageFilter implements Filter {

    public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain) throws IOException, ServletException {
        HttpServletRequest req = (HttpServletRequest) request;
        HttpServletResponse res = (HttpServletResponse) response;

        String username = req.getParameter("username");
        String firstname = req.getParameter("firstname");
        String lastname = req.getParameter("lastname");

        if (req.getMethod().equalsIgnoreCase("post")) {
            Map<String, String> errors = new HashMap<>();
            if (username == null || username.isBlank() || username.isEmpty()) {
                errors.put("username_error", "Username can not be blank");
            } else if (UserValidator.isDuplicateUsername(username)) {
                errors.put("username_error", "Username already taken!");
            }

            if (firstname == null || firstname.isBlank() || firstname.isEmpty()) {
                errors.put("pass_conf_err", "Firstname can not be blank");
            }

            if (lastname == null || lastname.isBlank() || lastname.isEmpty()) {
                errors.put("pass_conf_err", "Lastname can not be blank");
            }

            if (errors.isEmpty()) {
                chain.doFilter(request, response);
            } else {
                errors.forEach(req::setAttribute);
                req.getRequestDispatcher("/profile/profile.jsp").forward(req, res);
            }
        } else {
            chain.doFilter(request, response);
        }
    }
}
