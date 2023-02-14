package dev.sheengo.onlinemedclinic.services;

import dev.sheengo.onlinemedclinic.domains.Domain;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

public abstract class Service<T extends Domain> {
    public abstract HttpServletResponse service(HttpServletRequest request);

    abstract public T save(T t);
    abstract public boolean update(T t);
    abstract public boolean delete(Integer id);
    abstract public T get(Integer id);
}
