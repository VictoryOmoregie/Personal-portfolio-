package org.example;

import java.io.*;
import jakarta.servlet.*;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.*;

@WebServlet("/contact")
public class ContactServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        // Forward to the contact.jsp page
        RequestDispatcher dispatcher = request.getRequestDispatcher("/WEB-INF/views/contact.jsp");
        dispatcher.forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String name = request.getParameter("name");
        String email = request.getParameter("email");
        String msg = request.getParameter("message");

        // Simulate a successful message send
        request.setAttribute("message", "Message sent successfully! Thank you, " + name + ".");

        RequestDispatcher dispatcher = request.getRequestDispatcher("/WEB-INF/views/contact.jsp");
        dispatcher.forward(request, response);
    }
}
