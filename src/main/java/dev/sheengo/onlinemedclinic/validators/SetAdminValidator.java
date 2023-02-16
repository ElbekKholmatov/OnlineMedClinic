package dev.sheengo.onlinemedclinic.validators;

import dev.sheengo.onlinemedclinic.domains.User;
import dev.sheengo.onlinemedclinic.services.UserService;
import jakarta.servlet.http.HttpServletRequest;
import lombok.AccessLevel;
import lombok.NoArgsConstructor;

@NoArgsConstructor(access = AccessLevel.PRIVATE)
public class SetAdminValidator {
    private static final ThreadLocal<SetAdminValidator> threadLocal = ThreadLocal.withInitial(SetAdminValidator::new);
    public static SetAdminValidator getInstance(){
        return threadLocal.get();
    }

    public void checkParamsSetAdmin(HttpServletRequest req) {
        var id = req.getParameter("set_username");
        if (id == null || id.isEmpty()) {
            throw new IllegalArgumentException("Id is empty");
        }
        User user = UserService.getInstance().get(id).getDomain();
        if (user == null) {
            throw new IllegalArgumentException("User not found");
        }

    }
}
