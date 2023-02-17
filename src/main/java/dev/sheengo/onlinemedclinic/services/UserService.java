package dev.sheengo.onlinemedclinic.services;

import dev.sheengo.onlinemedclinic.configs.ThreadSafeCollections;
import dev.sheengo.onlinemedclinic.dao.DoctorDAO;
import dev.sheengo.onlinemedclinic.dao.SpecializationDAO;
import dev.sheengo.onlinemedclinic.dao.UserDAO;
import dev.sheengo.onlinemedclinic.domains.Doctor;
import dev.sheengo.onlinemedclinic.domains.Specialization;
import dev.sheengo.onlinemedclinic.domains.User;
import jakarta.servlet.AsyncContext;
import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.http.Cookie;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpSession;

import java.util.List;
import java.util.Objects;

public class UserService implements Service<User> {
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
                : "/user/main";

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
        Integer id = Integer.parseInt(request.getSession().getAttribute("id").toString());
        Response<User> response = get(id);
        User user = response.getDomain();
        request.setAttribute("firstName", user.getFirstName());
        if ( Objects.nonNull(user.getPictureId()) ) {
            request.setAttribute("filePath", user.getPictureId().getFilePath());
        }
        return Response.<User>builder().request(request).build();
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


    public Response<User> updateDeleteAdmin(HttpServletRequest request) {
        String username = request.getParameter("delete_username");
        boolean user = UserDAO.getInstance().updateDeleteAdmin(
                User.builder()
                        .username(username)
                        .role(User.UserRole.USER)
                        .build()
        );
        return Response.<User>builder()
                .request(request)
                .returnPage("/superAdmin/main")
                .build();
    }

    public List<User> getAdmins() {
        return UserDAO.getInstance().getOneRoleUsers(User.UserRole.ADMIN);
    }
    public List<User> getUsers() {
        return UserDAO.getInstance().getOneRoleUsers(User.UserRole.USER);
    }

    public List<User> getDrs() {
        return UserDAO.getInstance().getOneRoleUsers(User.UserRole.DOCTOR);
    }

    public Response<User> updateSetDr(HttpServletRequest request) {
        String username = request.getParameter("set_username");
        Short specId = Short.parseShort(request.getParameter("specialization_id"));
        boolean user = UserDAO.getInstance().updateSetDr(
                User.builder()
                        .username(username)
                        .role(User.UserRole.DOCTOR)
                        .build()
        );
        User usrjon = UserDAO.getInstance().get(username);
        Specialization specialization = SpecializationDAO.getInstance().get(specId);
        DoctorDAO.getInstance().save(
                Doctor.builder()
                        .user(usrjon)
                        .specializationId(specialization)
                        .build()
        );
        return Response.<User>builder()
                .request(request)
                .returnPage("/superAdmin/main")
                .build();
    }
    public Response<User> updateSetAdmin(HttpServletRequest request) {
        String username = request.getParameter("set_username");
        boolean user = UserDAO.getInstance().updateSetAdmin(
                User.builder()
                        .username(username)
                        .role(User.UserRole.ADMIN)
                        .build()
        );
        return Response.<User>builder()
                .request(request)
                .returnPage("/superAdmin/main")
                .build();
    }


    public List<Specialization> getAll() {
        return SpecializationDAO.getInstance().getAll();
    }
}
