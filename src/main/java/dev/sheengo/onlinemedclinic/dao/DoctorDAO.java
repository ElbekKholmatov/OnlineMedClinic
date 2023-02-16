package dev.sheengo.onlinemedclinic.dao;

import dev.sheengo.onlinemedclinic.domains.Doctor;
import dev.sheengo.onlinemedclinic.domains.Specialization;
import dev.sheengo.onlinemedclinic.domains.User;
import jakarta.persistence.EntityManager;
import lombok.AccessLevel;
import lombok.NoArgsConstructor;

@NoArgsConstructor(access = AccessLevel.PRIVATE)
public class DoctorDAO extends DAO<Doctor> {

    private static DoctorDAO instance;

    @Override
    public Doctor save(Doctor doctor) {

        EntityManager entityManager = getEntityManager();
        entityManager.getTransaction().begin();
        entityManager.persist(doctor);
        entityManager.getTransaction().commit();
        return doctor;
    }

    @Override
    public boolean update(Doctor doctor) {
        EntityManager entityManager = getEntityManager();
        entityManager.getTransaction().begin();
        entityManager.merge(doctor);
        entityManager.getTransaction().commit();
        return true;
    }

    @Override
    public boolean delete(Integer id) {
        return false;
    }

    @Override
    public Doctor get(Integer id) {
        return null;
    }

    public Doctor findDoctorById(Integer id) {

        EntityManager entityManager = getEntityManager();
        entityManager.getTransaction().begin();
        Doctor doctor = entityManager.find(Doctor.class, id);
        entityManager.getTransaction().commit();
        return doctor;
    }

    public Doctor findDoctorByUserId(Integer id) {

        EntityManager entityManager = getEntityManager();
        entityManager.getTransaction().begin();
        Doctor doctor = entityManager.find(Doctor.class, id);
        entityManager.getTransaction().commit();
        return doctor;
    }

    public User findUserByUserId(Integer id) {

        EntityManager entityManager = getEntityManager();
        entityManager.getTransaction().begin();
        User user = entityManager.find(User.class, id);
        entityManager.getTransaction().commit();
        return user;
    }

    public Specialization findSpecializationSpecializationId(Integer id) {

        EntityManager entityManager = getEntityManager();
        entityManager.getTransaction().begin();
        Specialization specialization = entityManager.find(Specialization.class, id);
        entityManager.getTransaction().commit();
        return specialization;
    }


    public static DoctorDAO getInstance() {
        if (instance == null) {
            synchronized (DoctorDAO.class) {
                if (instance == null) {
                    instance = new DoctorDAO();
                }
            }
        }
        return instance;
    }
}
