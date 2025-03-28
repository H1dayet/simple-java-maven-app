package com.qahub.servlets;

import javax.servlet.*;
import javax.servlet.http.*;
import java.io.IOException;

public class ProfileServlet extends HttpServlet {
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.setAttribute("userEmail", "john.doe@example.com");
        req.getRequestDispatcher("/profile.jsp").forward(req, resp);
    }
}
