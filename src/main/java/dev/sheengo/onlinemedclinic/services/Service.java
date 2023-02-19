package dev.sheengo.onlinemedclinic.services;

import dev.sheengo.onlinemedclinic.domains.Domain;
import jakarta.servlet.http.HttpServletRequest;

public interface Service<T extends Domain> {
    Response<T> service(HttpServletRequest request);
    Response<T> save(HttpServletRequest request);
    Response<T> update(HttpServletRequest request);
    Response<T> delete(HttpServletRequest request);
    Response<T> get(HttpServletRequest request);
    Response<T> get(Integer id);
}
