package com.tasktracker.controller;

import java.io.IOException;
import java.sql.*;
import javax.servlet.*;
import javax.servlet.http.*;

public class TaskServlet extends HttpServlet {

    // Handle GET requests (optional)
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html");
        response.getWriter().println("<h3>This servlet only accepts POST requests from the assignTasks.jsp form.</h3>");
    }

    // Handle POST requests (from the form)
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String title = request.getParameter("title");
        String description = request.getParameter("description");
        String assignedTo = request.getParameter("assignedTo");

        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            Connection con = DriverManager.getConnection(
                "jdbc:mysql://localhost:3306/tasktracker", "root", "Root123"
            );
            PreparedStatement ps = con.prepareStatement(
                "INSERT INTO tasks(title, description, assignedTo) VALUES (?, ?, ?)"
            );
            ps.setString(1, title);
            ps.setString(2, description);
            ps.setString(3, assignedTo);
            ps.executeUpdate();

            con.close();
            response.sendRedirect("viewTasks.jsp");
        } catch (Exception e) {
            e.printStackTrace();
            response.setContentType("text/html");
            response.getWriter().println("<h3>Error: " + e.getMessage() + "</h3>");
        }
    }
}

