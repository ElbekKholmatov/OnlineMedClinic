package dev.sheengo.onlinemedclinic.services;

import dev.sheengo.onlinemedclinic.domains.User;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

public class UserService extends Service<User>{
    @Override
    public HttpServletRequest service(HttpServletRequest request) {
        return null;
    }

    @Override
    User save(User user) {
        return null;
    }

    @Override
    boolean update(User user) {
        return false;
    }

    @Override
    boolean delete(Integer id) {
        return false;
    }

    @Override
    User get(Integer id) {
        return null;
    }
}
