package dev.sheengo.onlinemedclinic.dao;

import dev.sheengo.onlinemedclinic.domains.User;
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
            String query = "select u from User u where u.username = :username";
            return getEntityManager().createQuery(query, User.class)
                    .setParameter("username", username).getSingleResult();
        } catch (NoResultException e) {
            return null;
        }
    }


    public boolean updateSetAdmin(User user) {
        EntityManager entityManager = getEntityManager();
        entityManager.getTransaction().begin();
        entityManager.createQuery("update User u set u.role = :role where u.username = :username")
                .setParameter("role", user.getRole())
                .setParameter("username", user.getUsername())
                .executeUpdate();
        entityManager.getTransaction().commit();
        return true;
    }

    public static UserDAO getInstance() {
        return dao;
    }
}
