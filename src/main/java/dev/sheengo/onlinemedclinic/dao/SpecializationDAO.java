package dev.sheengo.onlinemedclinic.dao;

import dev.sheengo.onlinemedclinic.domains.Specialization;

public class SpecializationDAO extends DAO<Specialization, Short>{
    private static final SpecializationDAO dao = new SpecializationDAO();
    public static SpecializationDAO getInstance() {
        return dao;
    }
}
