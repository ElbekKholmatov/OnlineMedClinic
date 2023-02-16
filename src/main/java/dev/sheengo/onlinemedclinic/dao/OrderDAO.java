package dev.sheengo.onlinemedclinic.dao;

import dev.sheengo.onlinemedclinic.domains.Doctor;
import dev.sheengo.onlinemedclinic.domains.Order;
import dev.sheengo.onlinemedclinic.domains.User;
import jakarta.persistence.EntityManager;
import lombok.AccessLevel;
import lombok.NoArgsConstructor;

import java.util.List;

@NoArgsConstructor(access = AccessLevel.PRIVATE)
public class OrderDAO extends DAO<Order> {

    private static OrderDAO instance;

    @Override
    public Order save(Order order) {
        return null;
    }

    @Override
    public boolean update(Order order) {
        return false;
    }

    @Override
    public boolean delete(Integer id) {
        return false;
    }

    @Override
    public Order get(Integer id) {
        return null;
    }

    public List<Order> findAllOrders() {

        EntityManager entityManager = getEntityManager();
        return entityManager.createQuery("select o from Order o", Order.class).getResultList();
    }

    public List<Order> findOrderByUserId(Integer id) {

        EntityManager entityManager = getEntityManager();
        return entityManager.createQuery("select o from Order o where o.user.id = :id", Order.class).setParameter("id", id).getResultList();
    }

    public List<Order> findOrderByDoctorId(Integer id) {

        EntityManager entityManager = getEntityManager();
        return entityManager.createQuery("select o from Order o where o.doctor.id = :id", Order.class).setParameter("id", id).getResultList();
    }

    public List<Doctor> findDoctorByUserId(Integer id) {

        EntityManager entityManager = getEntityManager();
        return entityManager.createQuery("select o from Order o where o.user.id = :id", Doctor.class).setParameter("id", id).getResultList();
    }

    public List<User> findUserByDoctorId(Integer id) {

        EntityManager entityManager = getEntityManager();
        return entityManager.createQuery("select o from Order o where o.doctor.id = :id", User.class).setParameter("id", id).getResultList();
    }


    public static OrderDAO getInstance() {
        if (instance == null) {
            synchronized (OrderDAO.class) {
                if (instance == null) {
                    instance = new OrderDAO();
                }
            }
        }
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
        List<Order> orders = findOrderByDoctorId(id);

        EntityManager entityManager = getEntityManager();
        for (Order order : orders) {
            order.setDoctor(entityManager.find(Doctor.class, order.getDoctor().getUser()));
            order.setUser(entityManager.find(User.class, order.getUser().getId()));
        }


        return orders;
    }
}
