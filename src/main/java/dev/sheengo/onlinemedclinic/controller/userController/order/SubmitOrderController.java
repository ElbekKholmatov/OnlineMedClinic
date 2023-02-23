package dev.sheengo.onlinemedclinic.controller.userController.order;

import dev.sheengo.onlinemedclinic.configs.ThreadSafeCollections;
import dev.sheengo.onlinemedclinic.domains.Order;
import dev.sheengo.onlinemedclinic.services.OrderService;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

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
        HttpSession session = request.getSession();
        int weekDay = Integer.parseInt(session.getAttribute("day").toString());

        request.setAttribute("firstName", session.getAttribute("firstname"));

        LocalDateTime now = LocalDateTime.of(2023, month, day, 0, 0);

        int doctorId = ThreadSafeCollections.orderMap.get(
                Integer.parseInt(request.getSession().getAttribute("id").toString())
        ).getDoctor().getUser().getId();

        if (Objects.nonNull(request.getParameter("back"))) {
            LocalDateTime time = now.minusDays(1);
            while ( time.getDayOfWeek().getValue() == 6 || time.getDayOfWeek().getValue() == 7 ) {
                time = time.minusDays(1);
            }

            List<Integer> hours = OrderService.getInstance().getHours(doctorId, time.getDayOfWeek().getValue());

            session.setAttribute("day", --weekDay);

            request.setAttribute("now", time);
            request.setAttribute("hours", hours);
            request.setAttribute("hasNext", true );
            request.setAttribute("hasBack", weekDay > 1);

        } else {
            LocalDateTime time = now.plusDays(1);

            while ( time.getDayOfWeek().getValue() == 6 || time.getDayOfWeek().getValue() == 7 ) {
                time = time.plusDays(1);
            }

            List<Integer> hours = OrderService.getInstance().getHours(doctorId, time.getDayOfWeek().getValue());

            session.setAttribute("day", ++weekDay);

            request.setAttribute("now", time);
            request.setAttribute("hours", hours);
            request.setAttribute("hasNext", weekDay < 7 );
            request.setAttribute("hasBack", true);

        }
        request.getRequestDispatcher("/views/userPages/selectDate.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        request.setAttribute("firstName", request.getSession().getAttribute("firstname"));

        OrderService.getInstance().save(request).getRequest()
                .getRequestDispatcher("/views/submit.jsp").forward(request, response);
    }
}
