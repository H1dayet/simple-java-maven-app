package com.qahub.servlets;

import javax.servlet.*;
import javax.servlet.http.*;
import java.io.IOException;

public class TaskServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {
        req.setAttribute("username", "John Doe");
        req.getRequestDispatcher("/dashboard.jsp").forward(req, resp);
    }
}
