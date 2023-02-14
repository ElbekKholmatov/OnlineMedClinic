package dev.sheengo.onlinemedclinic.services;

import dev.sheengo.onlinemedclinic.domains.User;
import jakarta.servlet.http.HttpServletRequest;

public class UserService extends Service<User>{
    private static final ThreadLocal<UserService> instance = ThreadLocal.withInitial(UserService::new);
    public static UserService getInstance(){
        return instance.get();
    }

    @Override
    public HttpServletRequest service(HttpServletRequest request) {
//        String email = req.getParameter("email");
//        String password = req.getParameter("password");
//
//        User user = UserDAO.getInstance().get(email);
//
//        try {
//            HttpSession session = req.getSession();
//            session.setAttribute("firstname", user.getFullName());
//            session.setAttribute("id", user.getId());
//            session.setAttribute("role", user.getRole());
//
//            Cookie firstName = new Cookie("firstName", user.getFullName());
//            Cookie id = new Cookie("id", String.valueOf(user.getId()));
//            Cookie role = new Cookie("role", user.getRole());
//
//            firstName.setPath("/");
//            id.setPath("/");
//            firstName.setMaxAge(5 * 60 * 60);
//            id.setMaxAge(5 * 60 * 60);
//            role.setPath("/");
//            role.setMaxAge(5 * 60 * 60);
//
//            String url = req.getParameter("next");
//
//            resp.addCookie(id);
//            resp.addCookie(firstName);
//            resp.addCookie(role);
//
//            if (Objects.nonNull(url) && !url.isBlank()) {
//                resp.sendRedirect(url);
//            }
//            else if (user.getPassword().equals(password)) {
//                resp.sendRedirect( (user.getRole().equals("Admin")) ? "/adminPage" : "/showBooks");
//            } else
//                throw new Exception();
//        } catch (Exception e) {
//            e.printStackTrace();
//            RequestDispatcher dispatcher = req.getRequestDispatcher("/auth/error.jsp");
//            dispatcher.forward(req, resp);
//        }
        return null;
    }

    User save(User user) {
//        String firstName = request.getParameter("firstName");
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
        return null;
    }
}
