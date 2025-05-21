package com.almazen.webapp.controller;

import java.io.IOException;
import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

public class ClienteServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // Lógica para determinar qué vista de cliente mostrar
        // String action = request.getParameter("action");
        // if ("verMisPedidos".equals(action)) { ... }

        // Por ahora, siempre al dashboard de cliente
        request.setAttribute("tituloPagina", "Mi Panel de Cliente");
        RequestDispatcher dispatcher = request.getRequestDispatcher("/WEB-INF/jsp/cliente/dashboardCliente.jsp");
        dispatcher.forward(request, response);
    }
}