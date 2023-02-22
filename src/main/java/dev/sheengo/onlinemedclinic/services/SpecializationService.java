package dev.sheengo.onlinemedclinic.services;

import dev.sheengo.onlinemedclinic.dao.SpecializationDAO;
import dev.sheengo.onlinemedclinic.domains.Specialization;
import jakarta.persistence.EntityManager;
import jakarta.servlet.SessionCookieConfig;
import jakarta.servlet.http.HttpServletRequest;

import java.util.List;

public class SpecializationService implements Service<Specialization> {
    private static final ThreadLocal<SpecializationService> instance = ThreadLocal.withInitial(SpecializationService::new);
    public static SpecializationService getInstance() {
        return instance.get();
    }
    @Override
    public Response<Specialization> service(HttpServletRequest request) {
        return null;
    }

    @Override
    public Response<Specialization> save(HttpServletRequest request) {
        String name = request.getParameter("name");
        String description = request.getParameter("description");
        SpecializationDAO.getInstance().save(
                Specialization.builder()
                        .name(name)
                        .description(description)
                        .build());
        return Response.<Specialization>builder().request(request).build();
    }

    @Override
    public Response<Specialization> update(HttpServletRequest request) {
        String id = request.getParameter("id");
        String name = request.getParameter("name");
        String description = request.getParameter("description");
        SpecializationDAO.getInstance().updateS(
                Specialization.builder()
                        .id(Short.parseShort(id))
                        .name(name)
                        .description(description)
                        .build());
        return Response.<Specialization>builder().request(request).build();
    }

    @Override
    public Response<Specialization> delete(HttpServletRequest request) {
        String id = request.getParameter("id");


        Specialization specialization = Specialization.builder()
                .id(Short.parseShort(id))
                .build();
        SpecializationDAO.getInstance().deleteSpecialization(specialization);
        return Response.<Specialization>builder().request(request).build();
    }

    @Override
    public Response<Specialization> get(HttpServletRequest request) {
        return null;
    }

    @Override
    public Response<Specialization> get(Integer id) {
        return SpecializationDAO.getInstance().get(id);

    }

    public List<Specialization> getAll() {
        return SpecializationDAO.getInstance().getAll();
    }

    public Response<Specialization> get(String name) {
        return SpecializationDAO.getInstance().get(name);
    }


}
