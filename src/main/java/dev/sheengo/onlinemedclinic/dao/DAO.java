package dev.sheengo.onlinemedclinic.dao;

import dev.sheengo.onlinemedclinic.domains.Disease;
import dev.sheengo.onlinemedclinic.domains.Domain;
import dev.sheengo.onlinemedclinic.domains.Specialization;
import jakarta.persistence.EntityManager;
import jakarta.persistence.EntityManagerFactory;
import jakarta.persistence.Persistence;

import java.io.Serializable;
import java.lang.reflect.ParameterizedType;
import java.util.List;

public abstract class DAO<T extends Domain, ID extends Serializable> {

    private final EntityManagerFactory emf = Persistence.createEntityManagerFactory("persistence_unit");

    private final EntityManager em =  emf.createEntityManager();

    private final Class<T> persistenceClass;

    protected EntityManager getEntityManager() {
        return em;
    }

    @SuppressWarnings("unchecked")
    protected DAO() {
        this.persistenceClass = (Class<T>) (((ParameterizedType) getClass()
                .getGenericSuperclass())
                .getActualTypeArguments()[0]);
    }

    public T save(T t) {
        try {
            begin();
            em.persist(t);
            commit();
            return t;
        }catch (Exception e){
            getEntityManager().getTransaction().rollback();
            e.printStackTrace();
            return null;
        }
    }

    public T get(ID id) {
        try {
            begin();
            T t = em.find(persistenceClass, id);
            commit();
            return t;
        }catch (Exception e){
            commit();
            e.printStackTrace();
            return null;
        }
    }

    public boolean update(T t) {
        begin();
        em.merge(t);
        commit();
        return true;
    }

    public boolean delete(T t) {
        begin();
        em.remove(t);
        commit();
        return true;
    }
    @SuppressWarnings("unchecked")
    public List<T> getAll(){
        begin();
        List<T> resultList = em.createQuery("from " + persistenceClass.getSimpleName())
                .getResultList();
        commit();
        return resultList;
    }



    public boolean deleteById(ID id) {
        begin();
        boolean id1 = em.createQuery("delete from " + persistenceClass.getSimpleName() + " t where t.id = :id")
                .setParameter("id", id)
                .executeUpdate() == 0;
        commit();
        return id1;
    }

    protected void begin() {
        em.getTransaction().begin();
    }

    protected void commit() {
        em.getTransaction().commit();
    }
}
