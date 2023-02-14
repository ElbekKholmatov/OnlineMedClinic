package dev.sheengo.onlinemedclinic.services;

import dev.sheengo.onlinemedclinic.domains.Domain;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

public abstract class Service<T extends Domain> {
    public abstract HttpServletRequest service(HttpServletRequest request);

    public abstract HttpServletRequest save(HttpServletRequest request);
    public abstract HttpServletRequest update(HttpServletRequest request);
    public abstract HttpServletRequest delete(HttpServletRequest request);
    public abstract HttpServletRequest get(HttpServletRequest request);
    public abstract T get(Integer id);
}
