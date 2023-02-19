package dev.sheengo.onlinemedclinic.dao;

import dev.sheengo.onlinemedclinic.domains.Doctor;
import jakarta.persistence.EntityManager;
import lombok.AccessLevel;
import lombok.NoArgsConstructor;

import java.util.List;

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

    public List<Doctor> getDoctorsByCategory(Short categoryId){

        String query = "select d from Doctor d where d.specialization.id = :categoryId";

        begin();
        List<Doctor> doctors = getEntityManager().createQuery(query, Doctor.class)
                .setParameter("categoryId", categoryId).getResultList();
        System.out.println(doctors);
        commit();
        return doctors;
    }


    public static DoctorDAO getInstance() {
        return instance;
    }
}
