package dev.sheengo.onlinemedclinic.services;

import dev.sheengo.onlinemedclinic.domains.User;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

public class UserService extends Service<User>{
    @Override
    public HttpServletResponse service(HttpServletRequest request) {
        return null;
    }

    @Override
    public User save(User user) {
        return null;
    }

    @Override
    public boolean update(User user) {
        return false;
    }

    @Override
    public boolean delete(Integer id) {
        return false;
    }

    @Override
    public User get(Integer id) {
        return null;
    }
}
