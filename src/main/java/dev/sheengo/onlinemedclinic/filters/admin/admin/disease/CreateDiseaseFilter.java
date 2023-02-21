//package dev.sheengo.onlinemedclinic.filters.admin.admin.disease;
//
//import dev.sheengo.onlinemedclinic.validators.DiseaseValidator;
//import jakarta.servlet.*;
//import jakarta.servlet.annotation.*;
//import jakarta.servlet.http.HttpServletRequest;
//import jakarta.servlet.http.HttpServletResponse;
//
//import java.io.IOException;
//
//@WebFilter(filterName = "CreateDiseaseFilter", urlPatterns = "/admin/disease/create")
//public class CreateDiseaseFilter implements Filter {
//    @Override
//    public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain) throws IOException, ServletException {
//        var req = (HttpServletRequest) request;
//        var res = (HttpServletResponse) response;
//        if (req.getMethod().equalsIgnoreCase("post")) {
//            try {
//                DiseaseValidator.getInstance().checkParamsCreateDisease(req);
//                chain.doFilter(req, res);
//            } catch (Exception e) {
//                req.setAttribute("error", e.getMessage());
//                req.getRequestDispatcher("/views/adminPages/issues/CreateIssue.jsp").forward(req, res);
//            }
//        }else{
//            chain.doFilter(req, res);
//        }
//    }
//}
