package com.almazen.webapp.controller;

import java.io.IOException;
import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

public class AdminServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // Lógica para determinar qué vista de admin mostrar
        // String action = request.getParameter("action");
        // if ("verUsuarios".equals(action)) { ... }

        // Por ahora, siempre al dashboard de admin
        request.setAttribute("tituloPagina", "Dashboard Administrador");
        RequestDispatcher dispatcher = request.getRequestDispatcher("/WEB-INF/jsp/admin/dashboardAdmin.jsp");
        dispatcher.forward(request, response);
    }
    // doPost podría manejar acciones de formularios de admin
}