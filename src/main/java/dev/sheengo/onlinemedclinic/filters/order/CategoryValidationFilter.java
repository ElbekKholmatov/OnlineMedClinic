package dev.sheengo.onlinemedclinic.filters.order;

import dev.sheengo.onlinemedclinic.services.SpecializationService;
import jakarta.servlet.*;
import jakarta.servlet.annotation.*;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;
import java.util.Objects;

@WebFilter(filterName = "CategoryValidationFilter", urlPatterns = "/user/order")
public class CategoryValidationFilter implements Filter {

    @Override
    public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain) throws ServletException, IOException {
        HttpServletRequest req = (HttpServletRequest) request;
        HttpServletResponse res = (HttpServletResponse) response;

        if ( req.getMethod().equalsIgnoreCase("post") ) {

            String category = req.getParameter("category");
            if (Objects.isNull(category)) {
                req.setAttribute("categories", SpecializationService.getInstance().getAll());
                req.setAttribute("exception", "Category is invalid");
                req.setAttribute("firstName", req.getSession().getAttribute("firstname"));
                req.getRequestDispatcher("/views/selectCategory.jsp").forward(req, res);
            } else
                chain.doFilter(req, res);
        } else
            chain.doFilter(req, res);
    }
}