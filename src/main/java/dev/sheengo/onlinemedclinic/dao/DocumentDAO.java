package dev.sheengo.onlinemedclinic.dao;

import dev.sheengo.onlinemedclinic.domains.Document;
import dev.sheengo.onlinemedclinic.domains.Domain;
import jakarta.persistence.NoResultException;
import lombok.AccessLevel;
import lombok.NoArgsConstructor;

@NoArgsConstructor(access = AccessLevel.PRIVATE)
public class DocumentDAO extends DAO<Document, Integer>{
    private static final DocumentDAO instance = new DocumentDAO();
    public static DocumentDAO getInstance(){return instance;}

    public Document get(String filename) {
        String query = "select d from Document d where d.generatedFileName = ?1";
        try {
            return getEntityManager().createQuery(query, Document.class)
                    .setParameter(1, filename).getSingleResult();
        } catch (NoResultException e){
            return null;
        }
    }
}
