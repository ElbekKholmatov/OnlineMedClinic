package dev.sheengo.onlinemedclinic.validators;

import dev.sheengo.onlinemedclinic.services.SpecializationService;
import jakarta.servlet.http.HttpServletRequest;
import lombok.AccessLevel;
import lombok.NoArgsConstructor;

@NoArgsConstructor(access = AccessLevel.PRIVATE)

public class SpecializationValidator {
    private static final ThreadLocal<SpecializationValidator> threadLocal = ThreadLocal.withInitial(SpecializationValidator::new);

    public static SpecializationValidator getInstance() {
        return threadLocal.get();
    }


    public void checkParamsUpdateSer(HttpServletRequest req) {
        var id = req.getParameter("id");
        var name = req.getParameter("name");
        var description = req.getParameter("description");
        if (id == null || id.isEmpty()) {
            req.setAttribute("error", "Id is empty");
        }
        checkIsNullOrEmpty(req, name, description);
        if (SpecializationService.getInstance().get(id).getDomain() == null) {
            req.setAttribute("error", "Specialization doesn't exist");
        }
    }

    private void checkIsNullOrEmpty(HttpServletRequest req, String name, String description) {
        if (name == null || name.isEmpty()) {
            req.setAttribute("error", "Name is empty");
        }
        if (description == null || description.isEmpty()) {
            req.setAttribute("error", "Description is empty");
        }
        if (name.length() > 50) {
            req.setAttribute("error", "Name is too long");
        }
    }

    public void checkParamsDeleteSer(HttpServletRequest req) {
        var id = req.getParameter("id");
        if (id == null || id.isEmpty()) {
            req.setAttribute("error", "Id is empty");
        }
        if (SpecializationService.getInstance().get(id).getDomain() == null) {
            req.setAttribute("error", "Specialization doesn't exist");
        }
    }

    public void checkParamsCreateSer(HttpServletRequest req) {
        var name = req.getParameter("name");
        var description = req.getParameter("description");
        checkIsNullOrEmpty(req, name, description);
        if (SpecializationService.getInstance().get(name).getDomain() != null) {
            req.setAttribute("error", "Specialization already exists");
        }
    }
}
