package dev.sheengo.onlinemedclinic.dao;

import dev.sheengo.onlinemedclinic.domains.Doctor;
import dev.sheengo.onlinemedclinic.domains.Specialization;
import dev.sheengo.onlinemedclinic.domains.User;
import jakarta.persistence.EntityManager;
import lombok.AccessLevel;
import lombok.NoArgsConstructor;

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

    public Specialization findSpecializationByUserId(Integer id) {

        Doctor doctor = findDoctorByUserId(id);

        if (doctor == null) {
            return null;
        }

        return doctor.getSpecialization();
    }


    public static DoctorDAO getInstance() {
        return instance;
    }
}
