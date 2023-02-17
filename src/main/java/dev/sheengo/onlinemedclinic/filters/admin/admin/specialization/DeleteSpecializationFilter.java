package dev.sheengo.onlinemedclinic.filters.admin.admin.specialization;

import dev.sheengo.onlinemedclinic.services.SpecializationService;
import dev.sheengo.onlinemedclinic.validators.SpecializationValidator;
import jakarta.servlet.*;
import jakarta.servlet.annotation.WebFilter;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;

@WebFilter(filterName = "UpdateSpecializationFilter", urlPatterns = "/admin/specialization/delete")
public class DeleteSpecializationFilter implements Filter {

    @Override
    public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain) throws IOException, ServletException {
        var req = (HttpServletRequest) request;
        var res = (HttpServletResponse) response;
        if (req.getMethod().equalsIgnoreCase("post")) {
            try {
                SpecializationValidator.getInstance().checkParamsDeleteSer(req);
                chain.doFilter(req, res);
            } catch (Exception e) {
                req.setAttribute("error", e.getMessage());
                req.getRequestDispatcher("/views/adminPages/admin/DeleteIssues.jsp").forward(req, res);
            }
        }else{
            chain.doFilter(req, res);
        }
    }
}
