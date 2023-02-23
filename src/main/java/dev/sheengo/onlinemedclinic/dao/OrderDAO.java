package dev.sheengo.onlinemedclinic.dao;

import dev.sheengo.onlinemedclinic.domains.Doctor;
import dev.sheengo.onlinemedclinic.domains.Order;
import dev.sheengo.onlinemedclinic.domains.User;
import jakarta.persistence.EntityManager;
import lombok.AccessLevel;
import lombok.NoArgsConstructor;

import java.util.List;

@NoArgsConstructor(access = AccessLevel.PRIVATE)
public class OrderDAO extends DAO<Order, Integer> {

    private static OrderDAO instance = new OrderDAO();

    public List<Order> findOrderByUserId(Integer id) {

        EntityManager entityManager = getEntityManager();

        String query = "select o from Order o where o.user.id = :id order by o.visitTime desc";

        return entityManager.createQuery(query, Order.class).setParameter("id", id).getResultList();
    }

    public List<Order> findOrderByDoctorId(Integer id) {
        EntityManager entityManager = getEntityManager();
        return entityManager.createQuery("select o from Order o where o.doctor.user.id = :id order by o.visitTime desc", Order.class).setParameter("id", id).getResultList();
    }

    public List<Order> findOrderByDateAndDoctorId(String date, Integer id) {
        EntityManager entityManager = getEntityManager();

//        SELECT * FROM orders WHERE DATE(visittime) = '2023-02-18';  CURRENT_DATE
        String s = "select o from Order o where o.doctor.user.id = %s and DATE(o.visitTime) = '%s'".formatted(id, date);
        List<Order> resultList = entityManager.createQuery(s, Order.class)
//                .setParameter("id", id)
//                .setParameter("date", date)
                .getResultList();

        return resultList;
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
        return instance;
    }

    @Override
    public Order save(Order order) {
        EntityManager entityManager = getEntityManager();

        User user = entityManager.getReference(User.class, order.getUser().getId());
        Doctor doctor = entityManager.getReference(Doctor.class, order.getDoctor().getUser().getId());

        order.setUser(user);
        order.setDoctor(doctor);

        begin();
        entityManager.persist(order);
        commit();
        return order;
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

    public List<Order> findAllOrdersForDoctorByUserId(Integer id) {
        List<Order> orders = findOrderByUserId(id);


        return null;
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

    public Order findOrderByDoctorUserId(Integer id) {
        EntityManager entityManager = getEntityManager();
        return entityManager.createQuery("select o from Order o where o.doctor.user.id = :id", Order.class).setParameter("id", id).getSingleResult();
    }

    public void updateOrderStatus(String changeStatus, Integer id) {

        OrderDAO orderDAO = OrderDAO.getInstance();
        Order order = orderDAO.get(id);
        switch (changeStatus) {
            case "ORDERED" -> order.setStatus(Order.Status.ORDERED);
            case "IN_TREATMENT" -> order.setStatus(Order.Status.IN_TREATMENT);
            case "NO_ACTION" -> order.setStatus(Order.Status.NO_ACTION);

        }
        orderDAO.update(order);
    }
}
