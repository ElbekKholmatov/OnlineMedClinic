package dev.sheengo.onlinemedclinic.dao;

import dev.sheengo.onlinemedclinic.domains.Doctor;
import dev.sheengo.onlinemedclinic.domains.Specialization;
import jakarta.persistence.EntityManager;
import lombok.AccessLevel;
import lombok.NoArgsConstructor;

import java.util.List;

@NoArgsConstructor(access = AccessLevel.PRIVATE)
public class DoctorDAO extends DAO<Doctor, Integer> {

    private static final DoctorDAO instance = new DoctorDAO();

    public Doctor findDoctorByUserId(Integer id) {
        EntityManager entityManager = getEntityManager();
        begin();
        Doctor doctor = entityManager.find(Doctor.class, id);
        commit();
        return doctor;
    }

    public Specialization findSpecializationSpecializationId(Integer id) {

        EntityManager entityManager = getEntityManager();
        begin();
        Specialization specialization = entityManager.find(Specialization.class, id);
        commit();
        return specialization;
    }

    @Override
    public Doctor save(Doctor doctor) {
        EntityManager entityManager = getEntityManager();
        try {
            begin();
            User user = entityManager.getReference(User.class, doctor.getUser().getId());
            Specialization specialization = entityManager.getReference(Specialization.class, doctor.getSpecialization().getId());
            doctor.setUser(user);
            doctor.setSpecialization(specialization);
            entityManager.persist(doctor);
            commit();
            return doctor;
        }catch (Exception e){
            getEntityManager().getTransaction().rollback();
        }
        return null;
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

    public Doctor getDoctorsByUserID(int userId) {

        try {
            begin();
            String query = "select d from Doctor d where d.user.id = :userId";
            Doctor doctor = getEntityManager().createQuery(query, Doctor.class)
                    .setParameter("userId", userId).getSingleResult();
            commit();
            return doctor;
        }catch (Exception e){
            getEntityManager().getTransaction().rollback();
        }
        return null;
    }
}
