package dev.sheengo.onlinemedclinic.dao;

import dev.sheengo.onlinemedclinic.domains.User;
import jakarta.persistence.EntityManager;
import jakarta.persistence.NoResultException;
import lombok.AccessLevel;
import lombok.NoArgsConstructor;

import java.util.List;

@NoArgsConstructor(access = AccessLevel.PRIVATE)
public class UserDAO extends DAO<User> {
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
        EntityManager entityManager = getEntityManager();
        entityManager.getTransaction().begin();
        User user = entityManager.find(User.class, id);
//        entityManager.contains(user);
        entityManager.getTransaction().commit();
        return user;
    }

    public User get(String username) {
        try {
            String query = "select u from User u where u.username = :username";
            return getEntityManager().createQuery(query, User.class)
                    .setParameter("username", username).getSingleResult();
        } catch (NoResultException e) {
            return null;
        }
    }

    public static UserDAO getInstance() {
        return dao;
    }

    public boolean updateSetAdmin(User build) {
        EntityManager entityManager = getEntityManager();
        entityManager.getTransaction().begin();
        entityManager.createQuery("update User u set u.role = :role where u.username = :username")
                .setParameter("role", build.getRole())
                .setParameter("username", build.getUsername())
                .executeUpdate();
        entityManager.getTransaction().commit();
        return true;
    }
}
