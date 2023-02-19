package dev.sheengo.onlinemedclinic.dao;

import dev.sheengo.onlinemedclinic.domains.Doctor;
import dev.sheengo.onlinemedclinic.domains.Order;
import dev.sheengo.onlinemedclinic.domains.User;
import jakarta.persistence.EntityManager;
import jakarta.persistence.Query;
import lombok.AccessLevel;
import lombok.NoArgsConstructor;
import org.eclipse.tags.shaded.org.apache.xpath.operations.Or;

import java.util.ArrayList;
import java.util.List;

@NoArgsConstructor(access = AccessLevel.PRIVATE)
public class OrderDAO extends DAO<Order, Integer> {

    private static OrderDAO instance = new OrderDAO();

    public List<Order> findAllOrders() {
        EntityManager entityManager = getEntityManager();
        return entityManager.createQuery("select o from Order o", Order.class).getResultList();
    }

    public List<Order> findOrderByUserId(Integer id) {

        EntityManager entityManager = getEntityManager();
        return entityManager.createQuery("select o from Order o where o.user.id = :id", Order.class).setParameter("id", id).getResultList();
    }

    public List<Order> findOrderByDoctorUserId(Integer id) {
            EntityManager entityManager = getEntityManager();
            return entityManager.createQuery("select o from Order o where o.doctor.user.id = :id", Order.class).setParameter("id", id).getResultList();
    }

    public List<User> findUserByDoctorId(Integer id) {
        EntityManager entityManager = getEntityManager();
        return entityManager.createQuery("select o from Order o where o.doctor.id = :id", User.class).setParameter("id", id).getResultList();
    }


    public static OrderDAO getInstance() {
        return instance;
    }


    public List<Order> findAllOrdersByUserId(Integer id) {
        List<Order> orders = findOrderByUserId(id);

        EntityManager entityManager = getEntityManager();
        for (Order order : orders) {
            order.setDoctor(entityManager.find(Doctor.class, order.getDoctor().getUser()));
            order.setUser(entityManager.find(User.class, order.getUser().getId()));
        }


        return orders;
    }

    public List<Order> findAllOrdersByDoctorId(Integer id) {
        List<Order> orders = findOrderByDoctorUserId(id);

        EntityManager entityManager = getEntityManager();
        for (Order order : orders) {
            order.setDoctor(entityManager.find(Doctor.class, order.getDoctor().getUser()));
            order.setUser(entityManager.find(User.class, order.getUser().getId()));
        }


        return orders;
    }
}
