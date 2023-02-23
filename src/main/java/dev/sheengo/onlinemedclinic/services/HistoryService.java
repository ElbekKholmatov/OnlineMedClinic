package dev.sheengo.onlinemedclinic.services;

import dev.sheengo.onlinemedclinic.dao.HistoryDAO;
import dev.sheengo.onlinemedclinic.domains.History;
import jakarta.servlet.http.HttpServletRequest;

import java.util.List;

public class HistoryService implements Service<History> {

    private static final ThreadLocal<HistoryService> instance = ThreadLocal.withInitial(HistoryService::new);

    public static HistoryService getInstance() {
        return instance.get();
    }

    @Override
    public Response<History> service(HttpServletRequest request) {
        return null;
    }

    @Override
    public Response<History> save(HttpServletRequest request) {
        return null;
    }

    @Override
    public Response<History> update(HttpServletRequest request) {
        return null;
    }

    @Override
    public Response<History> delete(HttpServletRequest request) {
        return null;
    }

    @Override
    public Response<History> get(HttpServletRequest request) {
        return null;
    }

    @Override
    public Response<History> get(Integer id) {
        return null;
    }

    public List<History> getHistoryListById(HttpServletRequest request) {
        int id = Integer.parseInt(request.getSession().getAttribute("id").toString());
        List<History> histories = HistoryDAO.getInstance().getByUserId(id);
        return histories;
    }
}
