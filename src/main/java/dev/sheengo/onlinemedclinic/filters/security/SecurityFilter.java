package dev.sheengo.onlinemedclinic.filters.security;


import dev.sheengo.onlinemedclinic.configs.ThreadSafeCollections;
import jakarta.servlet.*;
import jakarta.servlet.annotation.WebFilter;
import jakarta.servlet.http.Cookie;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import lombok.extern.java.Log;

import java.io.IOException;
import java.util.Arrays;
import java.util.List;
import java.util.Objects;
import java.util.function.Predicate;

@Log
@WebFilter(urlPatterns = "/*")
public class SecurityFilter implements Filter {

    private static final List<String> WHITE_LIST = List.of(
            "/",
            "/home",
            "/signUp",
            "/logIn",
            "/resources/.+",
            "/download"
    );
    private static final List<String> ADMIN_PAGE_LIST = List.of(
            "/user/MainPage"
    );

    private static final Predicate<String> isSecure = (uri) -> {
        for (String item : WHITE_LIST)
            if (uri.matches(item))
                return false;
        return true;
    };
    private static final Predicate<String> isAdminPage = (uri) -> {
        for (String item : ADMIN_PAGE_LIST)
            if (uri.matches(item))
                return true;
        return false;
    };

    @Override
    public void doFilter(ServletRequest req, ServletResponse res, FilterChain chain) throws IOException, ServletException {
        HttpServletRequest request = (HttpServletRequest) req;
        HttpServletResponse response = (HttpServletResponse) res;
        String requestURI = request.getRequestURI();
//        request.getParameterMap().forEach((s, strings) -> );
        if (!isSecure.test(requestURI))
            chain.doFilter(request, response);
        else {
            Cookie[] cookies = Objects.requireNonNullElse(request.getCookies(), new Cookie[]{});
            Arrays.stream(cookies)
                    .peek(cookie -> {
                        if (cookie.getName().equals("id")) {
                            request.getSession().setAttribute("id", cookie.getValue());
                        }
                    })
                    .filter(cookie -> cookie.getName().equals("id") &&
                            ThreadSafeCollections.id.contains(Integer.parseInt(cookie.getValue())))
                    .findFirst()
                    .ifPresentOrElse((cookie -> {
                        try {
                            if (isAdminPage.test(requestURI)) {
                                if (request.getSession().getAttribute("role").toString().equals("Admin"))
                                    chain.doFilter(request, response);
                                else
                                    request.getRequestDispatcher("/views/errorPages/error.jsp").forward(request, response);
                            } else
                                chain.doFilter(request, response);
                        } catch (IOException | ServletException e) {
                            throw new RuntimeException(e);
                        }
                    }), () -> {
                        try {
                            response.sendRedirect("/home");
                        } catch (IOException e) {
                            throw new RuntimeException(e);
                        }
                    });
        }
    }
}
