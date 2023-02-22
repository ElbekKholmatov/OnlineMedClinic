package dev.sheengo.onlinemedclinic.validators;

import dev.sheengo.onlinemedclinic.domains.User;
import dev.sheengo.onlinemedclinic.services.UserService;
import jakarta.servlet.http.HttpServletRequest;
import lombok.NoArgsConstructor;


@NoArgsConstructor(access = lombok.AccessLevel.PRIVATE)
public class DoctorValidator {
    private static final ThreadLocal<DoctorValidator> threadLocal = ThreadLocal.withInitial(DoctorValidator::new);

    public static DoctorValidator getInstance() {
        return threadLocal.get();
    }

    public void checkParamsUpdateDoctor(HttpServletRequest req) {
        var username = req.getParameter("username");
        if (username == null || username.isEmpty()) {
            throw new IllegalArgumentException("Username cannot be empty");
        }
        if (UserService.getInstance().get(username).getDomain().getRole() == User.UserRole.DOCTOR) {
            throw new IllegalArgumentException("Username already a doctor");
        }

        var firstName = req.getParameter("firstName");
        if (firstName == null || firstName.isEmpty()) {
            throw new IllegalArgumentException("First name cannot be empty");
        }

        var lastName = req.getParameter("lastName");
        if (lastName == null || lastName.isEmpty()) {
            throw new IllegalArgumentException("Last name cannot be empty");
        }

        var phone = req.getParameter("phone");
        if (phone == null || phone.isEmpty()) {
            throw new IllegalArgumentException("Phone cannot be empty");
        }
        if (UserService.getInstance().get(username).getDomain().getPhone().equals(phone)) {
            throw new IllegalArgumentException("Phone already exists");
        }

        var address = req.getParameter("address");
        if (address == null || address.isEmpty()) {
            throw new IllegalArgumentException("Address cannot be empty");
        }
        
        var city = req.getParameter("city");
        if (city == null || city.isEmpty()) {
            throw new IllegalArgumentException("City cannot be empty");
        }
    }


}

