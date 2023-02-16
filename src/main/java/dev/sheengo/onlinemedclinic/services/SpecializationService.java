package dev.sheengo.onlinemedclinic.services;

import dev.sheengo.onlinemedclinic.domains.Specialization;
import jakarta.servlet.http.HttpServletRequest;

public class SpecializationService implements Service<Specialization>{
    private static final ThreadLocal<UserService> instance = ThreadLocal.withInitial(UserService::new);

    public static UserService getInstance() {
        return instance.get();
    }

    @Override
    public Response<Specialization> service(HttpServletRequest request) {
        return null;
    }

    @Override
    public Response<Specialization> save(HttpServletRequest request) {
        return null;
    }

    @Override
    public Response<Specialization> update(HttpServletRequest request) {
        return null;
    }

    @Override
    public Response<Specialization> delete(HttpServletRequest request) {
        return null;
    }

    @Override
    public Response<Specialization> get(HttpServletRequest request) {
        return null;
    }

    @Override
    public Response<Specialization> get(Integer id) {
        return null;
    }
}
