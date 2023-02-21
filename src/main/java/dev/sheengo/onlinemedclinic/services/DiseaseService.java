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
        DiseaseDAO.getInstance().save(
                Disease.builder()
                        .name(name)
                        .description(description)
                        .specialization(SpecializationService.getInstance().get(Integer.parseInt(specializationId)).getDomain())
                        .build());
        return Response.<Disease>builder().request(request).build();
    }

    @Override
    public Response<Disease> update(HttpServletRequest request) {
        return null;
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
        return null;
    }

    public List<Disease> getAll() {
        return DiseaseDAO.getInstance().getAll();
    }

    public Response<Disease> get(String name) {
        Optional<Disease> disease = DiseaseDAO.getInstance().get(name);
        return disease.map(disease1 -> Response.<Disease>builder()
                        .domain(disease1)
                        .build())
                .orElseGet(() -> Response.<Disease>builder()
                        .domain(Disease.builder()
                                .name("No disease found")
                                .build())
                        .build());
    }

    public Response<Disease> get(String name, Short speID) {
        Disease disease = DiseaseDAO.getInstance().get(name, speID);
        return Response.<Disease>builder()
                .domain(disease)
                .build();
    }
}
