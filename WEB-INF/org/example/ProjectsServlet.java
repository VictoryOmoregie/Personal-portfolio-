package org.example;

import java.io.*;
import jakarta.servlet.*;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.*;

@WebServlet("/projects")
public class ProjectsServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        // Just forward to the JSP displaying projects
        RequestDispatcher dispatcher = request.getRequestDispatcher("/WEB-INF/views/projects.jsp");
        dispatcher.forward(request, response);
    }
}
