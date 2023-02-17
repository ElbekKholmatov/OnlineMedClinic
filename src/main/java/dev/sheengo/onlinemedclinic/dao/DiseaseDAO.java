package dev.sheengo.onlinemedclinic.dao;

import dev.sheengo.onlinemedclinic.domains.Disease;
import dev.sheengo.onlinemedclinic.domains.User;
import jakarta.persistence.EntityManager;
import lombok.AccessLevel;
import lombok.NoArgsConstructor;

import java.util.List;

@NoArgsConstructor(access = AccessLevel.PRIVATE)
public class DiseaseDAO extends DAO<Disease, Short> {
    private static final DiseaseDAO dao = new DiseaseDAO();

    public static DiseaseDAO getInstance() {
        return dao;
    }

    public List<Disease> getAll() {
        EntityManager entityManager = getEntityManager();
        return entityManager.createQuery("select d from Disease d", Disease.class).getResultList();
    }
}
