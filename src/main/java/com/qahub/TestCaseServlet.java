package com.qahub;

import javax.servlet.*;
import javax.servlet.http.*;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

public class TestCaseServlet extends HttpServlet {
    private final List<String> testCases = new ArrayList<>();

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String title = request.getParameter("title");
        if (title != null && !title.isEmpty()) {
            testCases.add(title);
        }
        request.setAttribute("testCases", testCases);
        request.getRequestDispatcher("index.jsp").forward(request, response);
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setAttribute("testCases", testCases);
        request.getRequestDispatcher("index.jsp").forward(request, response);
    }
}
