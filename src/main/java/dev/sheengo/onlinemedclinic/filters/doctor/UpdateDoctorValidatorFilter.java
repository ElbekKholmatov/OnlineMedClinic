package dev.sheengo.onlinemedclinic.filters.doctor;

import dev.sheengo.onlinemedclinic.services.SpecializationService;
import dev.sheengo.onlinemedclinic.validators.AdminValidator;
import dev.sheengo.onlinemedclinic.validators.DoctorValidator;
import jakarta.servlet.annotation.WebFilter;

import jakarta.servlet.*;
import jakarta.servlet.annotation.*;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;
import java.util.Objects;

@WebFilter(filterName = "UpdateDoctorValidatorFilter", urlPatterns = "/dr/profile/edit")
public class UpdateDoctorValidatorFilter implements Filter {

    @Override
    public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain) throws IOException, ServletException {
        HttpServletRequest req = (HttpServletRequest) request;
        HttpServletResponse res = (HttpServletResponse) response;
        if (req.getMethod().equalsIgnoreCase("post")) {
//            if (Objects.isNull(category)) {
//                req.setAttribute("categories", SpecializationService.getInstance().getAll());
//                req.setAttribute("exception", "Category is invalid");
//                req.getRequestDispatcher("/views/selectCategory.jsp").forward(req, res);
//            } else
//                chain.doFilter(req, res);
            try {
                DoctorValidator.getInstance().checkParamsUpdateDoctor(req);
                chain.doFilter(req, res);
            } catch (Exception e) {
                req.setAttribute("error", e.getMessage());
                req.getRequestDispatcher("/views/dr/update.jsp").forward(req, res);
            }
        } else
            chain.doFilter(req, res);

    }
}
