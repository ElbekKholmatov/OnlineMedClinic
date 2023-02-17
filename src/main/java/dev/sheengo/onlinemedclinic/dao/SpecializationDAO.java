package dev.sheengo.onlinemedclinic.dao;

import dev.sheengo.onlinemedclinic.domains.Specialization;
import dev.sheengo.onlinemedclinic.services.Response;
import jakarta.persistence.EntityManager;

import java.util.List;

public class SpecializationDAO extends DAO<Specialization, Short> {
    private static final SpecializationDAO dao = new SpecializationDAO();

    public static SpecializationDAO getInstance() {
        return dao;
    }

    public List<Specialization> getAll() {
        EntityManager entityManager = getEntityManager();
        return entityManager.createQuery("select s from Specialization s", Specialization.class).getResultList();
    }

    public Response<Specialization> get(String name) {
        EntityManager entityManager = getEntityManager();
        return Response.<Specialization>builder()
                .domain(entityManager.createQuery("select s from Specialization s where s.name = :name", Specialization.class)
                        .setParameter("name", name)
                        .getSingleResult())
                .build();
    }
}
