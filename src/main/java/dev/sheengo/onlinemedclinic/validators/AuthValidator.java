package dev.sheengo.onlinemedclinic.validators;

import dev.sheengo.onlinemedclinic.dao.UserDAO;
import dev.sheengo.onlinemedclinic.domains.User;
import dev.sheengo.onlinemedclinic.exceptions.AuthException;
import dev.sheengo.onlinemedclinic.services.Response;
import dev.sheengo.onlinemedclinic.services.UserService;
import jakarta.servlet.http.HttpServletRequest;

import java.util.Objects;

public class AuthValidator {
    public static final String phonePattern = "^(\\+998)?\\d{9}$";
    public static final String passwordPattern = "(?=^.{8,}$)((?=.*\\d)|(?=.*\\W+))(?![.\\n])(?=.*[A-Z])(?=.*[a-z]).*$";
    public static final String passportPattern = "^([A-Z]{2})\\d{7}$";
    private static final ThreadLocal<AuthValidator> instance = ThreadLocal.withInitial(AuthValidator::new);

    public static AuthValidator getInstance() {
        return instance.get();
    }

    public void checkParamsRegister(HttpServletRequest req) throws AuthException {
        String firstName = req.getParameter("firstName");
        String lastName = req.getParameter("lastName");
        String phone = req.getParameter("phoneNumber");
        String username = req.getParameter("username");
        String password = req.getParameter("password");
        String rPassword = req.getParameter("rPassword");
        String address = req.getParameter("address");
        String passport = req.getParameter("passport");

        if (Objects.isNull(firstName) || firstName.isBlank()) {
            req.setAttribute("firstNameException", "Firstname is invalid");
            throw new AuthException();
        }
        if (Objects.isNull(lastName)) {
            req.setAttribute("lastNameException", "Lastname is invalid");
            throw new AuthException();
        }
        if (Objects.isNull(phone) || !phone.matches(phonePattern)) {
            req.setAttribute("phoneException", "Phone is invalid");
            throw new AuthException();
        }
        if (Objects.isNull(username) || username.length() < 3) {
            req.setAttribute("usernameException", "username must be more than 3 letters");
            throw new AuthException();
        }
        if (Objects.nonNull(UserDAO.getInstance().get(username))) {
            req.setAttribute("usernameException", "Username already exists");
            throw new AuthException();
        }
        if (Objects.isNull(password) || !password.matches(passwordPattern)) {
            req.setAttribute("passwordException", "Password must contain at least 1 uppercase letter, lowercase letter, number and any character");
            throw new AuthException();
        }
        if (!password.equals(rPassword)) {
            req.setAttribute("passwordDoNotMatchException", "Passwords do not match");
            throw new AuthException();
        }
        if (Objects.isNull(passport) || !passport.matches(passportPattern)) {
            req.setAttribute("passportException", "Passport is invalid");
            throw new AuthException();
        }
        if (Objects.isNull(address) || address.length() < 10) {
            req.setAttribute("addressException", "Address is invalid");
            throw new AuthException();
        }
    }

    public void checkParamsLogIn(HttpServletRequest req) throws AuthException {
        String username = req.getParameter("username");
        String password = req.getParameter("password");

        if (Objects.isNull(username) || username.isBlank()) {
            req.setAttribute("exception", "Email or password invalid");
            throw new AuthException();
        }
        if (Objects.isNull(password) || password.isBlank()) {
            req.setAttribute("exception", "Email or password invalid");
            throw new AuthException();
        }

        Response<User> response = UserService.getInstance().get(username);

        if (Objects.isNull(response.getDomain())) {
            req.setAttribute("exception", "Email or password invalid");
            throw new AuthException();
        }
        if (!response.getDomain().getPassword().equals(password)) {
            req.setAttribute("exception", "Email or password invalid");
            throw new AuthException();
        }
    }
}
