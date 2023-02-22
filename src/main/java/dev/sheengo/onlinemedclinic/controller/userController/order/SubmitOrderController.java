package dev.sheengo.onlinemedclinic.controller.userController.order;

import dev.sheengo.onlinemedclinic.configs.ThreadSafeCollections;
import dev.sheengo.onlinemedclinic.domains.Order;
import dev.sheengo.onlinemedclinic.services.OrderService;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;
import java.time.LocalDateTime;
import java.util.List;
import java.util.Objects;

@WebServlet(name = "SubmitOrderController", value = "/user/order/submit")
public class SubmitOrderController extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        int month = Integer.parseInt(request.getParameter("month"));
        int day = Integer.parseInt(request.getParameter("day"));

        LocalDateTime now = LocalDateTime.of(2023, month, day, 0, 0);
        int doctorId = ThreadSafeCollections.orderMap.get(
                Integer.parseInt(request.getSession().getAttribute("id").toString())
        ).getDoctor().getUser().getId();

        if (Objects.nonNull(request.getParameter("back"))) {

        } else {
            LocalDateTime time = now.plusDays(1);

            List<Integer> hours = OrderService.getInstance().getHours(doctorId, time.getDayOfWeek().getValue());
            request.setAttribute("now", time);
            request.setAttribute("hours", hours);
            request.setAttribute("hasNext", true);
            request.setAttribute("hasBack", true);

            request.getRequestDispatcher("/views/selectDate.jsp").forward(request, response);
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        OrderService.getInstance().save(request).getRequest()
                .getRequestDispatcher("/views/submit.jsp").forward(request, response);
    }
}
