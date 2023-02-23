package dev.sheengo.onlinemedclinic.services;

import dev.sheengo.onlinemedclinic.configs.ThreadSafeCollections;
import dev.sheengo.onlinemedclinic.dao.DoctorDAO;
import dev.sheengo.onlinemedclinic.dao.OrderDAO;
import dev.sheengo.onlinemedclinic.dao.UserDAO;
import dev.sheengo.onlinemedclinic.domains.Doctor;
import dev.sheengo.onlinemedclinic.domains.Order;
import dev.sheengo.onlinemedclinic.domains.User;
import jakarta.servlet.http.HttpServletRequest;
import lombok.AccessLevel;
import lombok.NoArgsConstructor;

import java.time.LocalDate;
import java.time.LocalDateTime;
import java.util.ArrayList;
import java.util.List;

@NoArgsConstructor(access = AccessLevel.PRIVATE)
public class OrderService implements Service<Order> {
    private static final ThreadLocal<OrderService> instance = ThreadLocal.withInitial(OrderService::new);

    public static OrderService getInstance() {
        return instance.get();
    }

    @Override
    public Response<Order> service(HttpServletRequest request) {
        Integer doctorId = Integer.parseInt(request.getParameter("doctor"));
        String description = request.getParameter("info");

        Doctor doctor = DoctorDAO.getInstance().findDoctorByUserId(doctorId);
        Order order = ThreadSafeCollections.orderMap.get(
                Integer.parseInt(request.getSession().getAttribute("id").toString())
        );
        order.setDoctor(doctor);
        order.setDescription(description);

        LocalDateTime now = LocalDateTime.now();
        if (now.getDayOfWeek().getValue() == 6) {
            now = now.plusDays(1);
        }
        now = now.plusDays(1);

        final int day = now.getDayOfWeek().getValue();

        List<Integer> hours = getHours(doctorId, day);

        request.setAttribute("hours", hours);
        request.setAttribute("now", now);
        request.setAttribute("hasNext", true);

        return Response.<Order>builder().request(request).build();
    }

    public List<Integer> getHours(Integer doctorId, int day) {

        List<LocalDateTime> orderTimes = OrderDAO.getInstance().findOrderByDoctorId(doctorId).stream()
                .filter(o -> o.getStatus().equals(Order.Status.ORDERED))
                .map(Order::getVisitTime).toList();

        return orderTimes.stream()
                .map(time -> {
                    int value = time.getDayOfWeek().getValue();
                    if (value == day) {
                        return time.getHour();
                    }
                    return null;
                }).toList();
    }

    @Override
    public Response<Order> save(HttpServletRequest request) {
        int day = Integer.parseInt(request.getParameter("day"));
        int hour = Integer.parseInt(request.getParameter("hour"));

        LocalDateTime time = LocalDateTime.of(2023, 2, day, hour, 0);

        Order order = ThreadSafeCollections.orderMap.get(
                Integer.parseInt(request.getSession().getAttribute("id").toString())
        );

        order.setVisitTime(time);
        order.setStatus(Order.Status.ORDERED);

        OrderDAO.getInstance().save(order);

        return Response.<Order>builder().request(request).build();
    }

    @Override
    public Response<Order> update(HttpServletRequest request) {
        return null;
    }

    @Override
    public Response<Order> delete(HttpServletRequest request) {
        return null;
    }

    @Override
    public Response<Order> get(HttpServletRequest request) {
        return null;
    }

    @Override
    public Response<Order> get(Integer id) {
        return null;
    }

    public void selectCategory(HttpServletRequest req) {
        Short category = Short.parseShort(req.getParameter("category"));

        Order order = Order.builder().user(UserDAO.getInstance().get(Integer.parseInt(
                req.getSession().getAttribute("id").toString())
        )).build();

        order.setStatus(Order.Status.NO_ACTION);

        ThreadSafeCollections.orderMap.put(order.getUser().getId(), order);

        req.setAttribute("doctors", DoctorDAO.getInstance().getDoctorsByCategory(category));
    }

    public Response<Order> getOrders(HttpServletRequest request) {
        Integer id = Integer.parseInt(request.getSession().getAttribute("id").toString());// id of user who is logged in

        OrderDAO orderDAO = OrderDAO.getInstance();
        List<Order> orders = orderDAO.findOrderByDoctorId(id);
        List<User> users = getUsers(orders);

        request.setAttribute("orders", orders);
        request.setAttribute("users", users);

        return Response.<Order>builder().request(request).build();
    }

    public Response<Order> getDailyOrders(HttpServletRequest request) {
        Integer id = Integer.parseInt(request.getSession().getAttribute("id").toString());

        String change_status = request.getParameter("change_status");
        String date = request.getParameter("day");
        String changedOrderId = request.getParameter("changedOrderId");
        String commentedOrderId = request.getParameter("commentedOrderId");
        String comment = request.getParameter("comment");

        System.out.println("commentedOrderId = " + commentedOrderId);
        System.out.println("comment = " + comment);

//        if (commentedOrderId != null && comment != null) {
//            OrderDAO orderDAO = OrderDAO.getInstance();
//            orderDAO.updateOrderComment(comment, Integer.parseInt(commentedOrderId));
//        }


        if (changedOrderId == null) {
            changedOrderId = "Tanlang";
        }

        Object attribute = request.getSession().getAttribute("day");


        if (date == null || date.isBlank()) {
            if (attribute != null) {
                String day = attribute.toString();
                date = day;
            } else
                date = LocalDate.now().toString();
        }


        if (change_status == null || change_status.isBlank()) {
            change_status = "Tanlang";
        }
        if (!change_status.equals("Tanlang") && change_status != null && changedOrderId != "") {
            OrderDAO orderDAO = OrderDAO.getInstance();
            orderDAO.updateOrderStatus(change_status, Integer.parseInt(changedOrderId));
        }
        OrderDAO orderDAO = OrderDAO.getInstance();


        List<Order> orders = orderDAO.findOrderByDateAndDoctorId(date, id);
        orders.sort((o1, o2) -> o1.getVisitTime().compareTo(o2.getVisitTime()));
        List<User> users = getUsers(orders);

        request.getSession().setAttribute("day", date);
        request.setAttribute("day", date);
        request.setAttribute("orders", orders);
        request.setAttribute("users", users);

        return Response.<Order>builder().request(request).build();
    }

    private static List<User> getUsers(List<Order> orders) {
        List<User> users = new ArrayList<>();

        for (Order order : orders) {
            users.add(order.getUser());
        }
        return users;
    }
}
