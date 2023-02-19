package dev.sheengo.onlinemedclinic.filters.admin.admin.dr;

import dev.sheengo.onlinemedclinic.validators.DiseaseValidator;
import dev.sheengo.onlinemedclinic.validators.DrValidator;
import jakarta.servlet.*;
import jakarta.servlet.annotation.*;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;

@WebFilter(filterName = "DeleteDrFilter", value = "/admin/dr/deleteDr")
public class DeleteDrFilter implements Filter {
    @Override
    public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain) throws ServletException, IOException {
        var req = (HttpServletRequest) request;
        var res = (HttpServletResponse) response;
        if (req.getMethod().equalsIgnoreCase("post")) {
            try {
                DrValidator.getInstance().checkParamsDeleteDr(req);
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
