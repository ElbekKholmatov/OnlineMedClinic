package dev.sheengo.onlinemedclinic.dao;

import dev.sheengo.onlinemedclinic.domains.History;
import jakarta.persistence.EntityManager;
import lombok.AccessLevel;
import lombok.NoArgsConstructor;

import java.util.List;

@NoArgsConstructor(access = AccessLevel.PRIVATE)
public class HistoryDAO extends DAO<History,Integer>{
    private static final HistoryDAO dao = new HistoryDAO();

    public static HistoryDAO getInstance() {
        return dao;
    }

    public List<History> getByUserId(Integer id) {
        EntityManager entityManager = getEntityManager();
        return entityManager.createQuery("select h from History h where h.userId.id = :id", History.class)
                .setParameter("id", id)
                .getResultList();
    }
}
