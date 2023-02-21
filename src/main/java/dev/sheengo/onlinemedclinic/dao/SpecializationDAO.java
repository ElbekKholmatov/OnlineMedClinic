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

    public Response<Specialization> get(String name) {
        EntityManager entityManager = getEntityManager();
        try {
            return Response.<Specialization>builder()
                    .domain(entityManager.createQuery("select s from Specialization s where s.name = :name", Specialization.class)
                            .setParameter("name", name)
                            .getSingleResult())
                    .build();
        } catch (Exception e) {
            return null;
        }
//        return null;
    }

    public Response<Specialization> get(Integer id) {
        EntityManager entityManager = getEntityManager();
        try {
            return Response.<Specialization>builder()
                    .domain(entityManager.createQuery("select s from Specialization s where s.id = :id", Specialization.class)
                            .setParameter("id", id)
                            .getSingleResult())
                    .build();
        } catch (Exception e) {
            return null;
        }
    }

    public void deleteSpecialization(Specialization specialization) {
        EntityManager entityManager = getEntityManager();
        entityManager.getTransaction().begin();
        entityManager.createQuery("delete from Specialization s where s.id = :id")
                .setParameter("id", specialization.getId())
                .executeUpdate();
        entityManager.getTransaction().commit();
    }

    public void updateS(Specialization build) {
        EntityManager entityManager = getEntityManager();
        begin();
        entityManager.createQuery("update Specialization s set s.name = :name, s.description = :description where s.id = :id")
                .setParameter("name", build.getName())
                .setParameter("description", build.getDescription())
                .setParameter("id", build.getId())
                .executeUpdate();
        commit();
    }
}
