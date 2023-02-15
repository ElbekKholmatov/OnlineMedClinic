package dev.sheengo.onlinemedclinic.filters.security;


import dev.sheengo.onlinemedclinic.configs.ThreadSafeCollections;
import dev.sheengo.onlinemedclinic.domains.User;
import dev.sheengo.onlinemedclinic.services.UserService;
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
            "/admin/main"
    );
    private static final List<String> DOCTOR_PAGE_LIST = List.of(
            "/doctor/main"
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
    private static final Predicate<String> isDoctorPage = (uri) -> {
        for (String item : DOCTOR_PAGE_LIST)
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
                        if (cookie.getName().equals("id") &&
                                ThreadSafeCollections.id.contains(Integer.parseInt(cookie.getValue()))) {
                            request.getSession().setAttribute("id", cookie.getValue());
                        }
                    })
                    .filter(cookie -> request.getSession().getAttribute("id") != null)
                    .findFirst()
                    .ifPresentOrElse((cookie -> {
                        try {
                            Integer id = Integer.parseInt(request.getSession().getAttribute("id").toString());
                            User user = UserService.getInstance().get(id).getDomain();

                            if (isAdminPage.test(requestURI)) {
                                if (user.getRole().equals(User.UserRole.ADMIN))
                                    chain.doFilter(request, response);
                                else
                                    request.getRequestDispatcher("/views/errorPages/error.jsp").forward(request, response);
                            } else if (isDoctorPage.test(requestURI)) {
                                if (user.getRole().equals(User.UserRole.DOCTOR))
                                    chain.doFilter(request, response);
                                else
                                    request.getRequestDispatcher("/views/errorPages/error.jsp").forward(request, response);
                            } else {
                                System.out.println(request.getSession().getAttribute("id"));
                                chain.doFilter(request, response);
                            }
                        } catch (IOException | ServletException e) {
                            throw new RuntimeException(e);
                        }
                    }), () -> {
                        try {
                            response.sendRedirect("/logIn");
                        } catch (IOException e) {
                            throw new RuntimeException(e);
                        }
                    });
        }
    }
}
