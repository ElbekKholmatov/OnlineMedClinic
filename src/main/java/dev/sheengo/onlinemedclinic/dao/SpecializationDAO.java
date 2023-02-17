package dev.sheengo.onlinemedclinic.dao;

import dev.sheengo.onlinemedclinic.domains.Specialization;
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
}
