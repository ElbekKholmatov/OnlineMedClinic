package dev.sheengo.onlinemedclinic.services;

import dev.sheengo.onlinemedclinic.dao.UserDAO;
import dev.sheengo.onlinemedclinic.domains.User;
import jakarta.servlet.http.HttpServletRequest;

public class UserService extends Service<User> {
    private static final ThreadLocal<UserService> instance = ThreadLocal.withInitial(UserService::new);

    public static UserService getInstance() {
        return instance.get();
    }

    @Override
    public HttpServletRequest service(HttpServletRequest request) {
        return null;
    }

    User save(User user) {
//        String firstName = requestuest.getParameter("firstName");
//        String lastName = request.getParameter("lastName");
//        String email = request.getParameter("email");
//        String password = request.getParameter("password");
//
//        UserDAO.getInstance().save(User.builder()
//                .fullName(firstName + " " + lastName)
//                .email(email)
//                .password(password)
//                .build());
//
//        request.setAttribute("email", email);
//        request.setAttribute("password", password);
//        request.getRequestDispatcher("/auth/index.jsp").forward(request, response);
        return null;
    }

    @Override
    public HttpServletRequest save(HttpServletRequest request) {
        return null;
    }

    @Override
    public HttpServletRequest update(HttpServletRequest request) {
        return null;
    }

    @Override
    public HttpServletRequest delete(HttpServletRequest request) {
        return null;
    }

    @Override
    public HttpServletRequest get(HttpServletRequest request) {
        return null;
    }

    @Override
    public User get(Integer id) {
        return UserDAO.getInstance().get(id);
    }

    public User get(String username) {
        return UserDAO.getInstance().get(username);
    }
}
