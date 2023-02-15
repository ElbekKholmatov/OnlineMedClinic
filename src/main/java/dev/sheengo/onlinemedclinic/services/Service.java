package dev.sheengo.onlinemedclinic.services;

import dev.sheengo.onlinemedclinic.domains.Domain;
import jakarta.servlet.http.HttpServletRequest;

public abstract class Service<T extends Domain> {
    public abstract Response<T> service(HttpServletRequest request);

    public abstract Response<T> save(HttpServletRequest request);
    public abstract Response<T> update(HttpServletRequest request);
    public abstract Response<T> delete(HttpServletRequest request);
    public abstract Response<T> get(HttpServletRequest request);
    public abstract Response<T> get(Integer id);
}
