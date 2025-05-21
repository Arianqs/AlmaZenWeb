package com.almazen.webapp.controller;

import java.io.IOException;
// Asegúrate de tener estos imports para Jakarta EE 10 (si NetBeans no los puso todos)
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.RequestDispatcher;
// Si vas a usar sesiones más adelante para mantener al usuario logueado:
// import jakarta.servlet.http.HttpSession;
/**
 * Servlet implementation class LoginServlet
 */
public class LoginServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // Si alguien intenta acceder al servlet por GET, podríamos redirigir al login
        // o mostrar un error. Por ahora, lo simple:
        response.sendRedirect(request.getContextPath() + "/index.jsp"); // Vuelve a la landing
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // 1. Obtener los parámetros del formulario de login
        // Los nombres "empresa", "usuario", "contrasena" deben coincidir
        // con los atributos 'name' de tus <input> en el formulario del modal.
        // (Revisando tu index.html, los names son "empresa", "usuario", "contrasena")
        String empresa = request.getParameter("empresa");
        String usuarioEmail = request.getParameter("usuario"); // En tu form era "usuario"
        String contrasena = request.getParameter("contrasena");

        // 2. Lógica de Autenticación (MUY SIMPLIFICADA POR AHORA)
        // En un sistema real, aquí validarías contra una base de datos.
        // Por ahora, vamos a simular un login exitoso si se ingresa algo.
        // Y decidiremos si es "admin" o "cliente" de forma básica.

        String vistaDestino;

        // Simulación MUY básica:
        if (usuarioEmail != null && !usuarioEmail.isEmpty() && contrasena != null && !contrasena.isEmpty()) {
            // Simulación: si el email contiene "admin", va al dashboard de admin, sino al de cliente.
            if (usuarioEmail.contains("admin")) {
                // Podrías crear un objeto Usuario y ponerlo en sesión
                // HttpSession session = request.getSession();
                // session.setAttribute("usuarioNombre", "Admin Principal");
                // session.setAttribute("usuarioRol", "administrador");

                request.setAttribute("mensajeBienvenida", "Bienvenido Administrador: " + usuarioEmail);
                vistaDestino = "/WEB-INF/jsp/admin/dashboardAdmin.jsp";
            } else {
                // HttpSession session = request.getSession();
                // session.setAttribute("usuarioNombre", "Cliente " + empresa);
                // session.setAttribute("usuarioRol", "cliente");

                request.setAttribute("mensajeBienvenida", "Bienvenido Cliente: " + usuarioEmail);
                vistaDestino = "/WEB-INF/jsp/cliente/dashboardCliente.jsp";
            }
        } else {
            // Fallo el "login" (campos vacíos)
            request.setAttribute("errorLogin", "Por favor, ingrese usuario y contraseña.");
            vistaDestino = "/index.jsp"; // Vuelve a la landing, el modal podría mostrar el error.
                                         // O a un login.jsp dedicado si lo tuvieras en WEB-INF
        }

        // 3. Redirigir (forward) a la vista apropiada
        RequestDispatcher dispatcher = request.getRequestDispatcher(vistaDestino);
        dispatcher.forward(request, response);
    }
}
 