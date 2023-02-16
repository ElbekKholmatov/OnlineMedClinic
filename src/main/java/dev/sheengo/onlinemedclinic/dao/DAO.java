package dev.sheengo.onlinemedclinic.dao;

import dev.sheengo.onlinemedclinic.domains.Domain;
import jakarta.persistence.EntityManager;
import jakarta.persistence.EntityManagerFactory;
import jakarta.persistence.Persistence;

import java.io.Serializable;
import java.lang.reflect.ParameterizedType;

public abstract class DAO<T extends Domain, ID extends Serializable> {
    protected final EntityManagerFactory emf = Persistence.createEntityManagerFactory("persistence_unit");;
    protected final EntityManager em =  emf.createEntityManager();
    private final Class<T> persistenceClass;

    protected EntityManager getEntityManager() {return em;}

    @SuppressWarnings("unchecked")
    protected DAO() {
        this.persistenceClass = (Class<T>) (((ParameterizedType) getClass()
                .getGenericSuperclass())
                .getActualTypeArguments()[0]);
    }

    public T save(T t) {
        begin();
        em.persist(t);
        commit();
        return t;
    }

    public T get(ID id) {
        return em.find(persistenceClass, id);
    }

    public boolean update(T t) {
        em.merge(t);
        return true;
    }

    public boolean delete(T t) {
        em.remove(t);
        return true;
    }

    public boolean deleteById(ID id) {
        return em.createQuery("delete from " + persistenceClass.getSimpleName() + " t where t.id = :id")
                .setParameter("id", id)
                .executeUpdate() == 0;
    }

    protected void begin() {
        em.getTransaction().begin();
    }

    protected void commit() {
        em.getTransaction().commit();
    }
}
