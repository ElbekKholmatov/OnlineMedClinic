package dev.sheengo.onlinemedclinic.validators;

import dev.sheengo.onlinemedclinic.domains.User;
import dev.sheengo.onlinemedclinic.services.UserService;
import jakarta.servlet.http.HttpServletRequest;
import lombok.AccessLevel;
import lombok.NoArgsConstructor;
import org.eclipse.tags.shaded.org.apache.bcel.generic.IF_ACMPEQ;

@NoArgsConstructor(access = AccessLevel.PRIVATE)
public class DrValidator {
    private static final ThreadLocal<DrValidator> threadLocal = ThreadLocal.withInitial(DrValidator::new);
    public static DrValidator getInstance(){
        return threadLocal.get();
    }

    public void checkParamsSetDr(HttpServletRequest req) {
        var username = req.getParameter("set_username");
        if (username == null || username.isEmpty()) {
            throw new IllegalArgumentException("Username is empty");
        }
        if (UserService.getInstance().get(username).getDomain() == null) {
            throw new IllegalArgumentException("Username not found");
        }
        if (UserService.getInstance().get(username).getDomain().getRole() == User.UserRole.DOCTOR) {
            throw new IllegalArgumentException("Username already a doctor");
        }
        if (UserService.getInstance().get(username).getDomain().getRole() == User.UserRole.ADMIN) {
            throw new IllegalArgumentException("Impossible to set admin as doctor");
        }
    }

    public void checkParamsDeleteDr(HttpServletRequest req) {
        var username = req.getParameter("delete_username");
        if (username == null || username.isEmpty()) {
            throw new IllegalArgumentException("Username is empty");
        }
        if (UserService.getInstance().get(username).getDomain() == null) {
            throw new IllegalArgumentException("Username not found");
        }
        if (UserService.getInstance().get(username).getDomain().getRole() != User.UserRole.DOCTOR) {
            throw new IllegalArgumentException("Impossible to delete non-doctor");
        }
    }
}
