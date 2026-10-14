package com.practice;

import java.io.IOException;
import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/hello")
public class HelloServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        String time = LocalDateTime.now().format(DateTimeFormatter.ofPattern("yyyy-MM-dd HH:mm:ss"));
        response.getWriter().println("<!doctype html><html><head><title>Servlet Test</title></head><body>");
        response.getWriter().println("<h1>Hello from a Java Servlet!</h1>");
        response.getWriter().println("<p>If you can see this page, your Maven WAR deployed on Tomcat.</p>");
        response.getWriter().println("<p>Server time: " + time + "</p>");
        response.getWriter().println("<p><a href=\"./\">Back to home</a></p>");
        response.getWriter().println("</body></html>");
    }
}
