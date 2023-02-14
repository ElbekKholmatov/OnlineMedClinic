package dev.sheengo.onlinemedclinic.dao;

import dev.sheengo.onlinemedclinic.domains.User;
import jakarta.persistence.EntityManager;

public class UserDAO extends DAO<User, UserDAO> {
    private static final UserDAO dao = new UserDAO();
    @Override
    public User save(User user) {
        EntityManager entityManager = getEntityManager();
        entityManager.getTransaction().begin();
        entityManager.persist(user);
        entityManager.getTransaction().commit();
        return user;
    }

    @Override
    public boolean update(User user) {
        return false;
    }

    @Override
    public boolean delete(Integer id) {
        return false;
    }

    @Override
    public User get(Integer id) {
        return null;
    }

    public static UserDAO getInstance() {
        return dao;
    }
}
