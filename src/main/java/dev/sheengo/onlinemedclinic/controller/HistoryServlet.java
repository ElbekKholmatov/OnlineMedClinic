package dev.sheengo.onlinemedclinic.controller;

import dev.sheengo.onlinemedclinic.domains.History;
import dev.sheengo.onlinemedclinic.services.HistoryService;
import jakarta.servlet.*;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;

import java.io.IOException;
import java.util.List;

@WebServlet(name = "HistoryServlet", value = "/profile/history")
public class HistoryServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        List<History> histories = HistoryService.getInstance().getHistoryListById(request);
        request.setAttribute("histories", histories);
        request.getRequestDispatcher("/profile/history.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
