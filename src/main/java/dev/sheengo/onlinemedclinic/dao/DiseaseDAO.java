package dev.sheengo.onlinemedclinic.dao;

import dev.sheengo.onlinemedclinic.domains.Disease;
import dev.sheengo.onlinemedclinic.domains.User;
import dev.sheengo.onlinemedclinic.services.Response;
import jakarta.persistence.EntityManager;
import lombok.AccessLevel;
import lombok.NoArgsConstructor;

import java.util.List;
import java.util.Optional;

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

    public Response<Disease> get(String name) {
        EntityManager entityManager = getEntityManager();
        try {
            Disease disease = entityManager.createQuery("select d from Disease d where d.name = :name", Disease.class)
                    .setParameter("name", name)
                    .getSingleResult();
            return Response.<Disease>builder()
                    .domain(disease)
                    .build();
        } catch (Exception e) {
            return null;
        }
    }

    public Disease get(String name, Long speID) {
EntityManager entityManager = getEntityManager();
        return entityManager.createQuery("select d from Disease d where d.name = :name and d.specialization.id = :speID", Disease.class)
                .setParameter("name", name)
                .setParameter("speID", speID)
                .getSingleResult();

    }

    public Response<Disease> get(Integer id) {
        EntityManager entityManager = getEntityManager();
        try {
            Disease disease = entityManager.createQuery("select d from Disease d where d.id = :id", Disease.class)
                    .setParameter("id", id)
                    .getSingleResult();
            return Response.<Disease>builder()
                    .domain(disease)
                    .build();
        } catch (Exception e) {
            return null;
        }
    }
}
