package dev.sheengo.onlinemedclinic.services;

import dev.sheengo.onlinemedclinic.dao.DiseaseDAO;
import dev.sheengo.onlinemedclinic.domains.Disease;
import dev.sheengo.onlinemedclinic.domains.Specialization;
import jakarta.servlet.SessionCookieConfig;
import jakarta.servlet.http.HttpServletRequest;

import java.util.List;
import java.util.Optional;

public class DiseaseService implements Service<Disease> {
    private static final ThreadLocal<DiseaseService> instance = ThreadLocal.withInitial(DiseaseService::new);

    public static DiseaseService getInstance() {
        return instance.get();
    }

    @Override
    public Response<Disease> service(HttpServletRequest request) {
        String name = request.getParameter("name");
        String description = request.getParameter("description");
        String specializationId = request.getParameter("specializationId");
        return Response.<Disease>builder()
                .domain(Disease.builder()
                        .name(name)
                        .description(description)
                        .specialization(SpecializationService.getInstance().get(Integer.parseInt(specializationId)).getDomain())
                        .build())
                .build();

    }

    @Override
    public Response<Disease> save(HttpServletRequest request) {
        String name = request.getParameter("name");
        String description = request.getParameter("description");
        String specializationId = request.getParameter("specialization_id");
        Specialization specialization = SpecializationService.getInstance().get(Integer.parseInt(specializationId)).getDomain();


        Disease disease = Disease.builder()
                .name(name)
                .description(description)
                .specialization(specialization)
                .build();

        DiseaseDAO.getInstance().save(disease);

        return Response.<Disease>builder().request(request).build();
    }

    @Override
    public Response<Disease> update(HttpServletRequest request) {
        Disease disease = DiseaseDAO.getInstance().get(Integer.parseInt(request.getParameter("id")));
        disease.setName(request.getParameter("name"));
        disease.setDescription(request.getParameter("description"));
        Specialization specialization = SpecializationService.getInstance().get(Integer.parseInt(request.getParameter("specialization_id"))).getDomain();
        disease.setSpecialization(specialization);
        DiseaseDAO.getInstance().update(disease);
        return Response.<Disease>builder().request(request).build();
    }

    @Override
    public Response<Disease> delete(HttpServletRequest request) {
        return null;
    }

    @Override
    public Response<Disease> get(HttpServletRequest request) {
        return null;
    }

    @Override
    public Response<Disease> get(Integer id) {
        return Response.<Disease>builder().domain(DiseaseDAO.getInstance().get(id)).build();
    }

    public List<Disease> getAll() {
        return DiseaseDAO.getInstance().getAll();
    }

    public Response<Disease> get(String name) {
        Disease disease = DiseaseDAO.getInstance().get(name);
        return Response.<Disease>builder()
                .domain(disease)
                .build();
    }

    public Response<Disease> get(String name, Long speID) {
        Disease disease = DiseaseDAO.getInstance().get(name, speID);
        return Response.<Disease>builder()
                .domain(disease)
                .build();
    }
}
