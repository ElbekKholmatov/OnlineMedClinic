package dev.sheengo.onlinemedclinic.dao;

import dev.sheengo.onlinemedclinic.domains.Domain;
import jakarta.persistence.EntityManager;
import jakarta.persistence.Persistence;

public abstract class DAO<T extends Domain, D extends DAO> {
    private static final EntityManager entityManager = Persistence
            .createEntityManagerFactory("persistence_unit").createEntityManager();
    abstract public T save(T t);
    abstract public boolean update(T t);
    abstract public boolean delete(Integer id);
    abstract public T get(Integer id);

    public EntityManager getEntityManager(){
        return entityManager;
    }
}
