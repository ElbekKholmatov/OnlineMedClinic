package dev.sheengo.onlinemedclinic.dao;

import dev.sheengo.onlinemedclinic.domains.User;
import dev.sheengo.onlinemedclinic.services.Response;
import jakarta.persistence.EntityManager;
import jakarta.persistence.NoResultException;
import lombok.AccessLevel;
import lombok.NoArgsConstructor;

import java.util.List;

@NoArgsConstructor(access = AccessLevel.PRIVATE)
public class UserDAO extends DAO<User, Integer> {
    private static final UserDAO dao = new UserDAO();

    @Override
    public boolean update(User user) {
        return false;
    }

    public User get(String username) {
        try {
            begin();
            String query = "select u from User u where u.username = :username";
            User username1 = getEntityManager().createQuery(query, User.class)
                    .setParameter("username", username).getSingleResult();
            commit();
            return username1;
        } catch (NoResultException e) {
            getEntityManager().getTransaction().rollback();
            e.printStackTrace();
        }
        return null;
    }


    public boolean updateSetAdmin(User user) {
        EntityManager entityManager = getEntityManager();
        begin();
        entityManager.createQuery("update User u set u.role = :role where u.username = :username")
                .setParameter("role", user.getRole())
                .setParameter("username", user.getUsername())
                .executeUpdate();
        commit();
        return true;
    }

    public static UserDAO getInstance() {
        return dao;
    }

    public boolean updateDeleteAdmin(User user) {
        EntityManager entityManager = getEntityManager();
        begin();
        entityManager.createQuery("update User u set u.role = :role where u.username = :username")
                .setParameter("role", user.getRole())
                .setParameter("username", user.getUsername())
                .executeUpdate();
        commit();
        return true;
    }

    public List<User> getOneRoleUsers(User.UserRole role) {
        EntityManager entityManager = getEntityManager();
        return entityManager.createQuery("select u from User u where u.role = :role", User.class)
                .setParameter("role", role)
                .getResultList();

    }

    public boolean updateSetDr(User user) {
        EntityManager entityManager = getEntityManager();
        begin();
        entityManager.createQuery("update User u set u.role = :role where u.username = :username")
                .setParameter("role", user.getRole())
                .setParameter("username", user.getUsername())
                .executeUpdate();
        commit();
        return true;
    }

    public List<User> getAllAdmins() {
        EntityManager entityManager = getEntityManager();
        return entityManager.createQuery("select u from User u where u.role = :role", User.class)
                .setParameter("role", User.UserRole.ADMIN)
                .getResultList();
    }

    public List<User> getAllDoctors() {
        EntityManager entityManager = getEntityManager();
        return entityManager.createQuery("select u from User u where u.role = :role", User.class)
                .setParameter("role", User.UserRole.DOCTOR)
                .getResultList();
    }
}
