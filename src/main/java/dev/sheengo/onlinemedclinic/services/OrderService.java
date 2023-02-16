package dev.sheengo.onlinemedclinic.services;

import dev.sheengo.onlinemedclinic.domains.Order;
import jakarta.servlet.http.HttpServletRequest;
import lombok.AccessLevel;
import lombok.NoArgsConstructor;

@NoArgsConstructor(access = AccessLevel.PRIVATE)
public class OrderService implements Service<Order>{
    private static final ThreadLocal<OrderService> instance = ThreadLocal.withInitial(OrderService::new);
    public static OrderService getInstance(){return instance.get();}
    @Override
    public Response<Order> service(HttpServletRequest request) {
        return null;
    }

    @Override
    public Response<Order> save(HttpServletRequest request) {
        return null;
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
        String category = req.getParameter("category");

    }
}
