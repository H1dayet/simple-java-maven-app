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

// File: src/main/webapp/WEB-INF/web.xml
<web-app xmlns="http://xmlns.jcp.org/xml/ns/javaee" version="3.1">
    <servlet>
        <servlet-name>TestCaseServlet</servlet-name>
        <servlet-class>com.qahub.TestCaseServlet</servlet-class>
    </servlet>
    <servlet-mapping>
        <servlet-name>TestCaseServlet</servlet-name>
        <url-pattern>/</url-pattern>
    </servlet-mapping>
</web-app>

// File: src/main/webapp/index.jsp
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <title>QAHub</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css">
</head>
<body class="p-5">
<div class="container">
    <h1 class="mb-4">QAHub - Test Case Management</h1>
    <form method="post" class="mb-4">
        <div class="input-group">
            <input type="text" name="title" class="form-control" placeholder="Enter test case title" required>
            <button class="btn btn-primary" type="submit">Add Test Case</button>
        </div>
    </form>

    <table class="table table-bordered">
        <thead>
            <tr>
                <th>#</th>
                <th>Test Case Title</th>
            </tr>
        </thead>
        <tbody>
        <% 
            List<String> testCases = (List<String>) request.getAttribute("testCases");
            if (testCases != null) {
                int i = 1;
                for (String title : testCases) {
        %>
            <tr>
                <td><%= i++ %></td>
                <td><%= title %></td>
            </tr>
        <% 
                } 
            } 
        %>
        </tbody>
    </table>
</div>
</body>
</html>
