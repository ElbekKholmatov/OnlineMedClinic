package dev.sheengo.onlinemedclinic.services;

import dev.sheengo.onlinemedclinic.domains.Domain;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

public abstract class Service<T extends Domain> {
    public abstract HttpServletResponse service(HttpServletRequest request);

    abstract T save(T t);
    abstract boolean update(T t);
    abstract boolean delete(Integer id);
    abstract T get(Integer id);
}
