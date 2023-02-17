package dev.sheengo.onlinemedclinic.validators;

import dev.sheengo.onlinemedclinic.domains.User;
import dev.sheengo.onlinemedclinic.services.UserService;
import jakarta.servlet.http.HttpServletRequest;
import lombok.AccessLevel;
import lombok.NoArgsConstructor;

@NoArgsConstructor(access = AccessLevel.PRIVATE)
public class AdminValidator {
    private static final ThreadLocal<AdminValidator> threadLocal = ThreadLocal.withInitial(AdminValidator::new);
    public static AdminValidator getInstance(){
        return threadLocal.get();
    }

    public void checkParamsSetAdmin(HttpServletRequest req) {
        var id = req.getParameter("set_username");
        checkIsNullOrEmpty(id);
        User user = UserService.getInstance().get(id).getDomain();
        if (user.getRole().equals(User.UserRole.ADMIN)) {
            throw new IllegalArgumentException("User already admin");
        }
        if (user.getRole().equals(User.UserRole.DOCTOR)) {
            throw new IllegalArgumentException("User already doctor");
        }

    }

    public void checkParamsDeleteAdmin(HttpServletRequest req) {
        var id = req.getParameter("delete_username");
        checkIsNullOrEmpty(id);
        User user = UserService.getInstance().get(id).getDomain();

        if (user.getRole().equals(User.UserRole.USER)) {
            throw new IllegalArgumentException("This is not admin");
        }
        if (user.getRole().equals(User.UserRole.DOCTOR)) {
            throw new IllegalArgumentException("This is not admin");
        }
        if (user.getRole().equals(User.UserRole.SUPER_ADMIN)) {
            throw new IllegalArgumentException("You can't delete super admin");
        }
    }

    private void checkIsNullOrEmpty(String id) {
        if (id == null || id.isEmpty()) {
            throw new IllegalArgumentException("Id is empty");
        }
        User user = UserService.getInstance().get(id).getDomain();
        if (user == null) {
            throw new IllegalArgumentException("User not found");
        }
        if (user.getRole().equals(User.UserRole.SUPER_ADMIN)) {
            throw new IllegalArgumentException("You can't change role of super admin");
        }
    }
}
