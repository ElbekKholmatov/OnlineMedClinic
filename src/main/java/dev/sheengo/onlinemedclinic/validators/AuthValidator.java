package dev.sheengo.onlinemedclinic.validators;

import dev.sheengo.onlinemedclinic.exceptions.AuthException;
import jakarta.servlet.http.HttpServletRequest;

import java.util.Objects;

public class AuthValidator {
    public static final String emailPattern = "^([a-zA-Z0-9_\\-\\.]+)@([a-zA-Z0-9_\\-]+)(\\.[a-zA-Z]{2,5}){1,2}$";
    public static final String passwordPattern = "(?=^.{8,}$)((?=.*\\d)|(?=.*\\W+))(?![.\\n])(?=.*[A-Z])(?=.*[a-z]).*$";
    private static final ThreadLocal<AuthValidator> instance = ThreadLocal.withInitial(AuthValidator::new);

    public static AuthValidator getInstance(){ return instance.get(); }

    public void checkParamsRegister(HttpServletRequest req) throws AuthException {
        String firstName = req.getParameter("firstName");
        String lastName = req.getParameter("lastName");
        String email = req.getParameter("email");
        String password = req.getParameter("password");
        String rPassword = req.getParameter("rPassword");

        if ( Objects.isNull(firstName) || firstName.isBlank() ) {
            req.setAttribute("firstNameException", "Firstname is invalid");
            throw new AuthException();
        }
        if ( Objects.isNull(lastName) ) {
            req.setAttribute("lastNameException", "Lastname is invalid");
            throw new AuthException();
        }
        if ( Objects.isNull(email) || !email.matches(emailPattern) ) {
            req.setAttribute("emailException", "Email must contain a letter, number, one optional character, and @");
            throw new AuthException();
        }
        if ( Objects.nonNull(UserDAO.getInstance().get(email)) ) {
            req.setAttribute("emailException", "Email already exists");
            throw new AuthException();
        }
        if ( Objects.isNull(password) || !password.matches(passwordPattern) ) {
            req.setAttribute("passwordException", "Password must contain at least 1 uppercase letter, lowercase letter, number and any character");
            throw new AuthException();
        }
        if ( !password.equals(rPassword) ) {
            req.setAttribute("passwordDoNotMatchException", "Passwords do not match");
            throw new AuthException();
        }
    }
    public void checkParamsLogIn(HttpServletRequest req) throws AuthException {
        String email = req.getParameter("email");
        String password = req.getParameter("password");

        User user = UserDAO.getInstance().get(email);

        if ( Objects.isNull(user) ) {
            req.setAttribute("emailException", "Email not found exception");
            throw new AuthException();
        }
        if ( !user.getPassword().equals(password) ) {
            req.setAttribute("passwordException", "Password not correct");
            throw new AuthException();
        }
    }
}
