package dev.sheengo.onlinemedclinic.filters.admin.supreme;

import jakarta.servlet.*;
import jakarta.servlet.annotation.*;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import dev.sheengo.onlinemedclinic.validators.AdminValidator;

import java.io.IOException;

@WebFilter(filterName = "SetAdminFilter", urlPatterns = "/superAdmin/setAdmin")
public class SetAdminFilter implements Filter {

    @Override
    public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain) throws ServletException, IOException {
        var req = (HttpServletRequest) request;
        var res = (HttpServletResponse) response;
        if (req.getMethod().equalsIgnoreCase("post")) {
            try {
                AdminValidator.getInstance().checkParamsSetAdmin(req);
                chain.doFilter(req, res);
            } catch (Exception e) {
                req.setAttribute("error", e.getMessage());
                req.getRequestDispatcher("/views/adminPages/admin/SetAdmin.jsp").forward(req, res);
            }
        }else{
            chain.doFilter(req, res);
        }
    }
}
