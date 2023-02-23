package dev.sheengo.onlinemedclinic.validators;

import dev.sheengo.onlinemedclinic.dao.UserDAO;
import dev.sheengo.onlinemedclinic.domains.User;
import jakarta.servlet.http.HttpServletRequest;
import lombok.AccessLevel;
import lombok.NoArgsConstructor;

import java.util.List;
import java.util.Map;

@NoArgsConstructor(access = AccessLevel.PRIVATE)
public class UserValidator {
    private static final ThreadLocal<UserValidator> threadLocal = ThreadLocal.withInitial(UserValidator::new);
    public static UserValidator getInstance(){
        return threadLocal.get();
    }

    public static boolean isDuplicateUsername(String username) {
        List<User> users = UserDAO.getInstance().getAll();
        for (User user : users) {
            if (user.getUsername().equals(username)) {
                return true;
            }
        }
        return false;
    }


}
