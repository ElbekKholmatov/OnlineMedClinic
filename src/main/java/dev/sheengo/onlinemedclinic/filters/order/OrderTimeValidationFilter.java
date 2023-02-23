package dev.sheengo.onlinemedclinic.filters.order;

import dev.sheengo.onlinemedclinic.configs.ThreadSafeCollections;
import dev.sheengo.onlinemedclinic.domains.Order;
import dev.sheengo.onlinemedclinic.exceptions.OrderException;
import dev.sheengo.onlinemedclinic.services.OrderService;
import dev.sheengo.onlinemedclinic.services.SpecializationService;
import jakarta.servlet.*;
import jakarta.servlet.annotation.*;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;
import java.time.LocalDateTime;
import java.time.ZoneId;
import java.util.List;
import java.util.Objects;
import java.util.TimeZone;

@WebFilter(filterName = "OrderTimeValidationFilter", urlPatterns = "/user/order/submit")
public class OrderTimeValidationFilter implements Filter {

    @Override
    public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain) throws ServletException, IOException {
        HttpServletRequest req = (HttpServletRequest) request;
        HttpServletResponse res = (HttpServletResponse) response;

        if (req.getMethod().equalsIgnoreCase("post")) {

            String reqHour = request.getParameter("hour");

            int day = Integer.parseInt(req.getParameter("day"));
            int month = Integer.parseInt(req.getParameter("month"));

            LocalDateTime now = LocalDateTime.of(2023, month, day, 0, 0);

            Order order = ThreadSafeCollections.orderMap.get(Integer.parseInt(
                    req.getSession().getAttribute("id").toString()));

            List<Integer> hours = OrderService.getInstance().getHours(order.getDoctor().getUser().getId(),
                    now.getDayOfWeek().getValue());

            try {

                if (Objects.isNull(reqHour))
                    throw new OrderException("Hour is invalid");

                int hour = Integer.parseInt(reqHour);

                if (hours.contains(hour))
                    throw new OrderException("Hour already taken");


                chain.doFilter(req, res);
            } catch (OrderException e) {
                req.setAttribute("exception", e.getMessage());
                req.setAttribute("now", now);
                req.setAttribute("hours", hours);
                req.setAttribute("hasNext", req.getParameter("next"));
                req.setAttribute("hasBack", req.getParameter("back"));
                req.getRequestDispatcher("/views/userPages/selectDate.jsp").forward(req, res);
            }
        } else
            chain.doFilter(req, res);
    }
}
