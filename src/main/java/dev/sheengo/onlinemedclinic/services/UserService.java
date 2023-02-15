package dev.sheengo.onlinemedclinic.services;

import dev.sheengo.onlinemedclinic.configs.ThreadSafeCollections;
import dev.sheengo.onlinemedclinic.dao.UserDAO;
import dev.sheengo.onlinemedclinic.domains.User;
import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.http.Cookie;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpSession;

public class UserService extends Service<User> {
    private static final ThreadLocal<UserService> instance = ThreadLocal.withInitial(UserService::new);

    public static UserService getInstance() {
        return instance.get();
    }

    @Override
    public Response<User> service(HttpServletRequest request) {
        String username = request.getParameter("username");

        User user = get(username).getDomain();

        HttpSession session = request.getSession();
        session.setMaxInactiveInterval(60 * 60 * 4);

        session.setAttribute("firstname", user.getFirstName());
        session.setAttribute("id", user.getId());
        session.setAttribute("role", user.getRole());

        Cookie cookie = new Cookie("id", String.valueOf(user.getId()));

        cookie.setPath("/");
        cookie.setMaxAge(60 * 60 * 24);

        if (!ThreadSafeCollections.id.contains(user.getId())) {
            ThreadSafeCollections.id.add(user.getId());
        }

        String page = user.getRole().equals(User.UserRole.SUPER_ADMIN) ? "/superAdmin/main" :
                user.getRole().equals(User.UserRole.ADMIN) ? "/admin/main"
                : (user.getRole().equals(User.UserRole.DOCTOR)) ? "/doctor/main"
                : "user/main";

        return Response.<User>builder()
                .cookie(cookie)
                .returnPage(page)
                .build();
    }

    @Override
    public Response<User> save(HttpServletRequest request) {
        String firstName = request.getParameter("firstName");
        String lastName = request.getParameter("lastName");
        String phone = request.getParameter("phoneNumber");
        String username = request.getParameter("username");
        String password = request.getParameter("password");
        String address = request.getParameter("address");
        String passport = request.getParameter("passport");

        UserDAO.getInstance().save(
                User.builder()
                        .address(address)
                        .firstName(firstName)
                        .lastName(lastName)
                        .username(username)
                        .password(password)
                        .passport(passport)
                        .phone(phone)
                        .build()
        );

        request.setAttribute("username", username);
        request.setAttribute("password", password);
        return Response.<User>builder().request(request).build();
    }

    @Override
    public Response<User> update(HttpServletRequest request) {
        return null;
    }

    @Override
    public Response<User> delete(HttpServletRequest request) {
        return null;
    }

    @Override
    public Response<User> get(HttpServletRequest request) {
        return null;
    }

    @Override
    public Response<User> get(Integer id) {
        return Response.<User>builder()
                .domain(UserDAO.getInstance().get(id))
                .build();
    }

    public Response<User> get(String username) {
        return Response.<User>builder()
                .domain(UserDAO.getInstance().get(username))
                .build();
    }
}
