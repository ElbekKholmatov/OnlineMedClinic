package dev.sheengo.onlinemedclinic.filters.admin.supreme;

import dev.sheengo.onlinemedclinic.validators.AdminValidator;
import jakarta.servlet.*;
import jakarta.servlet.annotation.*;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;

@WebFilter(filterName = "DeleteAdminFilter", urlPatterns = "/superAdmin/deleteAdmin")
public class DeleteAdminFilter implements Filter {
    @Override
    public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain) throws ServletException, IOException {
        var req = (HttpServletRequest) request;
        var res = (HttpServletResponse) response;
        if (req.getMethod().equalsIgnoreCase("post")) {
            try {
                AdminValidator.getInstance().checkParamsDeleteAdmin(req);
                chain.doFilter(req, res);
            } catch (Exception e) {
                req.setAttribute("error", e.getMessage());
                req.getRequestDispatcher("/views/adminPages/admin/DeleteAdmin.jsp").forward(req, res);
            }
        }else{
            chain.doFilter(req, res);
        }
    }
}
