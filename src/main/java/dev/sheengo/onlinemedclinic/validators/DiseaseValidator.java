package dev.sheengo.onlinemedclinic.validators;

import dev.sheengo.onlinemedclinic.domains.Specialization;
import dev.sheengo.onlinemedclinic.domains.User;
import dev.sheengo.onlinemedclinic.services.DiseaseService;
import dev.sheengo.onlinemedclinic.services.SpecializationService;
import dev.sheengo.onlinemedclinic.services.UserService;
import jakarta.servlet.http.HttpServletRequest;
import lombok.AccessLevel;
import lombok.NoArgsConstructor;

import javax.xml.validation.Validator;

@NoArgsConstructor(access = AccessLevel.PRIVATE)
public class DiseaseValidator {
    private static final ThreadLocal<DiseaseValidator> threadLocal = ThreadLocal.withInitial(DiseaseValidator::new);
    public static DiseaseValidator getInstance(){
        return threadLocal.get();
    }


    public void checkParamsCreateDisease(HttpServletRequest req) {
        var name = req.getParameter("name");
        var description = req.getParameter("description");
        var id = req.getParameter("specialization_id");
        checkIsNullOrEmpty(name);
        checkIsNullOrEmpty(description);
        checkIsNullOrEmpty(id);
//        checkIsAvailableName(name,Short.parseShort(id));
//        checkIsAvailableSpecialization(Integer.valueOf(id));


    }

    private void checkIsAvailableName(String name, Long speID) {
        if (DiseaseService.getInstance().get(name,speID).getDomain() != null) {
            throw new IllegalArgumentException("Name is already taken");
        }
    }


    private void checkIsAvailableSpecialization(Integer id) {
        if(SpecializationService.getInstance().get(id).getDomain() == null){
            throw new IllegalArgumentException("Specialization not found");
        }
    }

    private void checkIsAvailableName(String name) {
        if (DiseaseService.getInstance().get(name).getDomain() != null) {
            throw new IllegalArgumentException("Name is already taken");
        }
    }

    private void checkIsNullOrEmpty(String name) {
        if (name == null || name.isEmpty()) {
            throw new IllegalArgumentException("Name is empty");
        }
    }

    public void checkParamsDeletedisease(HttpServletRequest req) {
        var id = req.getParameter("id");
        checkIsNullOrEmpty(id);
        checkIsAvailableId(Integer.valueOf(id));
    }

    private void checkIsAvailableId(Integer valueOf) {
        if(DiseaseService.getInstance().get(valueOf).getDomain() == null){
            throw new IllegalArgumentException("Disease not found");
        }
    }

    public void checkParamsUpdateDisease(HttpServletRequest req) {
        var id = req.getParameter("id");
        var name = req.getParameter("name");
        var description = req.getParameter("description");
        var speID = req.getParameter("specialization_id");
        checkIsNullOrEmpty(id);
        checkIsNullOrEmpty(name);
        checkIsNullOrEmpty(description);
        checkIsNullOrEmpty(speID);
        checkIsAvailableId(Integer.valueOf(id));
        checkIsAvailableName(name,Long.parseLong(speID));
        checkIsAvailableSpecialization(Integer.valueOf(speID));
    }


}
