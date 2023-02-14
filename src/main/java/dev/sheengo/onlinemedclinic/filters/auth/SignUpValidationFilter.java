package dev.sheengo.onlinemedclinic.filters.auth;

import com.company.library.exceptions.AuthException;
import com.company.library.filters.validators.AuthValidator;
import jakarta.servlet.*;
import jakarta.servlet.annotation.WebFilter;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;

@WebFilter(filterName = "SignUpValidationFilter", urlPatterns = "/signUp")
public class SignUpValidationFilter implements Filter {
    public void init(FilterConfig config) throws ServletException {
    }

    public void destroy() {
    }

    @Override
    public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain) throws ServletException, IOException {
        var req = (HttpServletRequest) request;
        var res = (HttpServletResponse) response;

        if (req.getMethod().equalsIgnoreCase("post")) {
            try {
                AuthValidator.getInstance().checkParamsRegister(req);
                chain.doFilter(req, res);
            } catch (AuthException e) {
                RequestDispatcher dispatcher = req.getRequestDispatcher("/auth/signUp.jsp");
                dispatcher.forward(req, res);
            }
        } else
            chain.doFilter(req, res);
    }
}
