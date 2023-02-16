package dev.sheengo.onlinemedclinic.dao;

import dev.sheengo.onlinemedclinic.domains.Doctor;
import dev.sheengo.onlinemedclinic.domains.Specialization;
import dev.sheengo.onlinemedclinic.domains.User;
import jakarta.persistence.EntityManager;
import lombok.AccessLevel;
import lombok.NoArgsConstructor;

@NoArgsConstructor(access = AccessLevel.PRIVATE)
public class DoctorDAO extends DAO<Doctor, Integer> {

    private static DoctorDAO instance = new DoctorDAO();

    public Doctor findDoctorByUserId(Integer id) {

        EntityManager entityManager = getEntityManager();
        entityManager.getTransaction().begin();
        Doctor doctor = entityManager.find(Doctor.class, id);
        entityManager.getTransaction().commit();
        return doctor;
    }

    public Specialization findSpecializationSpecializationId(Integer id) {

        EntityManager entityManager = getEntityManager();
        entityManager.getTransaction().begin();
        Specialization specialization = entityManager.find(Specialization.class, id);
        entityManager.getTransaction().commit();
        return specialization;
    }


    public static DoctorDAO getInstance() {
        return instance;
    }
}
