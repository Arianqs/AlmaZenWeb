<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>AlmaZen - Sistema de Gestión de Almacén</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/style.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">
</head>
<body>
    <div id="landing-page">
        <header class="landing-header-v2">
            <div class="container header-container">
                <div class="logo">
                    <i class="fas fa-warehouse"></i>
                    <span>AlmaZen</span>
                </div>
                <nav class="main-nav">
                    <ul>
                        <li><a href="#features">Características</a></li>
                        <li><a href="#testimonials">Testimonios</a></li>
                        <li><a href="#contact">Contacto</a></li>
                    </ul>
                </nav>
                <div class="header-actions">
                    <button id="login-button" class="btn btn-primary">Iniciar Sesión</button>
                </div>
            </div>
        </header>
        
        <main>
            <!-- Hero Section -->
            <section class="hero-section">
                <div class="container hero-content">
                    <div class="hero-text">
                        <h1>Sistema de Gestión de Almacén</h1>
                        <p>Optimiza tus operaciones de almacén con nuestra plataforma intuitiva y completa.</p>
                        <div class="hero-buttons">
                            <button id="demo-button" class="btn btn-primary btn-large">Solicitar Demo</button>
                            <button class="btn btn-secondary-outline btn-large">Saber más</button>
                        </div>
                    </div>
                    <div class="hero-image">
                        <div class="carousel-container">
                            <div class="carousel-track">
                                <div class="carousel-slide current-slide">
                                    <img src="images/carrusel3.png" alt="Descripción Imagen 1">
                                </div>
                                <div class="carousel-slide">
                                    <img src="images/carrusel2.png" alt="Descripción Imagen 2">
                                </div>
                                <div class="carousel-slide">
                                    <img src="images/carrusel1.png" alt="Descripción Imagen 3">
                                </div>
                            </div>

                            <button class="carousel-button carousel-button--left hidden"> <i
                                    class="fas fa-chevron-left"></i>
                            </button>
                            <button class="carousel-button carousel-button--right">
                                <i class="fas fa-chevron-right"></i>
                            </button>

                            <div class="carousel-nav">
                                <button class="carousel-indicator current-indicator"></button>
                                <button class="carousel-indicator"></button>
                                <button class="carousel-indicator"></button>
                            </div>
                        </div>
                    </div>
                </div>
            </section>
            
            <!-- Logos / Social Proof -->
            <section class="logos-section">
                <div class="container">
                    <p>Reconocido como el mejor servicio de control de Almacén</p>
                    <div class="logo-grid">
                        <img src="images/logoipsum-347.svg" alt="Logo Miller">
                        <img src="images/logoipsum-334.svg" alt="Logo Boheco">
                        <img src="images/logoipsum-336.svg" alt="Logo Max Marine">
                        <img src="images/logoipsum-348.svg" alt="Logo Badger">
                        <img src="images/logoipsum-356.svg" alt="Logo Element">
                    </div>
                </div>
            </section>
            
            <!-- Features Section -->
            <section id="features" class="features-section">
                <div class="container">
                    <h2>Características Principales</h2>
                    <div class="features-grid">
                        <div class="feature-card">
                            <i class="fas fa-chart-line feature-icon"></i>
                            <h3>Análisis en Tiempo Real</h3>
                            <p>Monitorea tu Almacén con datos actualizados y reportes detallados al instante.</p>
                        </div>
                        <div class="feature-card">
                            <i class="fas fa-mobile-alt feature-icon"></i>
                            <h3>Acceso Multiplataforma</h3>
                            <p>Gestiona tu Almacén desde cualquier dispositivo, en cualquier momento y lugar.</p>
                        </div>
                        <div class="feature-card">
                            <i class="fas fa-shield-alt feature-icon"></i>
                            <h3>Seguridad Avanzada</h3>
                            <p>Protección de datos y control de acceso multinivel para tu tranquilidad.</p>
                        </div>
                        <div class="feature-card">
                            <i class="fas fa-cogs feature-icon"></i>
                            <h3>Gestión Centralizada</h3>
                            <p>Ordena artículos, crea grupos y paquetes de productos, y centraliza el registro.</p>
                        </div>
                        <div class="feature-card">
                            <i class="fas fa-truck-moving feature-icon"></i>
                            <h3>Seguimiento Completo</h3>
                            <p>Rastrea los movimientos de los artículos y sus fechas de vencimiento.</p>
                        </div>
                        <div class="feature-card">
                            <i class="fas fa-boxes feature-icon"></i>
                            <h3>Control de Stock</h3>
                            <p>Establece puntos de reabastecimiento y realiza ajustes de inventario.</p>
                        </div>
                    </div>
                </div>
            </section>

            
            <!-- Testimonials Section -->
            <section id="testimonials" class="testimonials-section">
                <div class="container">
                    <h2>Lo que dicen nuestros clientes</h2>
                    <div class="testimonials-grid">
                        <div class="testimonial-card">
                            <p>"Excelente sistema, ha mejorado significativamente nuestra eficiencia operativa.
                                ¡Totalmente recomendado!"</p>
                            <div class="testimonial-author">
                                <img src="images/MariaGarcia.jpeg" alt="Avatar Maria Garcia">
                                <div>
                                    <strong>Maria Garcia</strong>
                                    <span>Gerente General, Tech Solutions</span>
                                </div>
                            </div>
                        </div>
                        <div class="testimonial-card">
                            <p>"La mejor inversión que hemos hecho para nuestro control de inventario. Fácil de usar y
                                muy potente."</p>
                            <div class="testimonial-author">
                                <img src="images/CarlosRodriguez.jpeg" alt="Avatar Carlos Rodriguez">
                                <div>
                                    <strong>Carlos Rodríguez</strong>
                                    <span>Director Comercial, Global Parts</span>
                                </div>
                            </div>
                        </div>
                        <div class="testimonial-card">
                            <p>"Interfaz intuitiva y soporte técnico excepcional. AlmaZen nos ha facilitado enormemente
                                la gestión diaria."</p>
                            <div class="testimonial-author">
                                <img src="images/AnaMartinez.jpeg" alt="Avatar Ana Martinez">
                                <div>
                                    <strong>Ana Martínez</strong>
                                    <span>Supervisora de Almacén, LogistiCorp</span>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </section>
            
            <section id="contact" class="contact-section">
                <div class="container contact-layout-container">

                    <div class="contact-image">
                        <img src="images/Oficina.jpeg"
                            alt="Ilustración de contacto o equipo de AlmaZen">
                    </div>

                    <div class="contact-form-content">
                        <h3>¿Interesado? ¡Hablemos!</h3>
                        <p>Envíanos tus datos y un miembro de nuestro equipo se comunicará contigo para resolver tus
                            dudas.</p>

                        <form id="contact-form" action="#" method="POST">
                            <div class="form-group">
                                <label for="contact-name">Nombre Completo <span class="required">*</span></label>
                                <input type="text" id="contact-name" name="nombreCompleto" placeholder="Ej: Juan Pérez"
                                    required>
                            </div>
                            <div class="form-group">
                                <label for="contact-email">Correo Electrónico <span class="required">*</span></label>
                                <input type="email" id="contact-email" name="correo"
                                    placeholder="juan.perez@empresa.com" required>
                            </div>
                            <div class="form-group">
                                <label for="contact-company">Empresa</label>
                                <input type="text" id="contact-company" name="empresa"
                                    placeholder="Nombre de tu compañía">
                            </div>
                            <div class="form-group">
                                <label for="contact-role">Cargo</label>
                                <input type="text" id="contact-role" name="cargo"
                                    placeholder="Ej: Gerente de Logística">
                            </div>
                            <div class="form-group">
                                <label for="contact-phone">Teléfono (Opcional)</label>
                                <input type="tel" id="contact-phone" name="telefono" placeholder="+51 987 654 321">
                            </div>
                            <div class="form-group">
                                <label for="contact-message">Mensaje <span class="required">*</span></label>
                                <textarea id="contact-message" name="mensaje" rows="5"
                                    placeholder="Escribe tu consulta, requerimiento o mensaje aquí..."
                                    required></textarea>
                            </div>
                            <button type="submit" class="btn btn-primary">Enviar Mensaje</button>
                        </form>
                    </div>
                </div>
            </section>

            
            <!-- Final CTA Section -->
            <section class="final-cta-section">
                <div class="container cta-layout-container">

                    <div class="cta-text-content">
                        <h2>Plataforma integral para gestión y administración de Almacén</h2>
                        <p>Comienza hoy tu prueba gratuita de 14 días sin riesgos.</p>

                        <ul class="cta-benefits-list">
                            <li><i class="fas fa-check-circle"></i> Control total de tu stock en tiempo real.</li>
                            <li><i class="fas fa-check-circle"></i> Reportes y análisis para tomar mejores decisiones.
                            </li>
                            <li><i class="fas fa-check-circle"></i> Acceso seguro desde cualquier dispositivo.</li>
                        </ul>

                        <button class="btn btn-primary btn-large">Empieza Ya</button>
                    </div>

                    <div class="cta-image-placeholder">
                        <img src="images/Ilustraicion1.jpg" alt="Ilustración o captura de AlmaZen">
                    </div>

                </div>
            </section>

                    
        </main>
        
        <footer class="landing-footer-v2">
            <div class="container footer-grid">
                <div class="footer-col">
                    <h4>AlmaZen</h4>
                    <p>Soluciones integrales para la gestión de Almacén.</p>
                    <p>© 2024 AlmaZen. Todos los derechos reservados.</p>
                </div>
                <div class="footer-col">
                    <h4>Enlaces Rápidos</h4>
                    <ul>
                        <li><a href="#features">Características</a></li>
                        <li><a href="#">Precios</a></li>
                        <li><a href="#testimonials">Testimonios</a></li>
                        <li><a href="#">Blog</a></li>
                    </ul>
                </div>
                <div class="footer-col">
                    <h4>Contacto</h4>
                    <ul>
                        <li><i class="fas fa-envelope"></i> info@almazen-inventario.com</li>
                        <li><i class="fas fa-phone"></i> +1 234 567 890</li>
                        <li><i class="fas fa-map-marker-alt"></i> Calle Ficticia 123, Ciudad</li>
                    </ul>
                </div>
                <div class="footer-col">
                    <h4>Síguenos</h4>
                    <div class="social-icons">
                        <a href="#" aria-label="Facebook"><i class="fab fa-facebook-f"></i></a>
                        <a href="#" aria-label="Twitter"><i class="fab fa-twitter"></i></a>
                        <a href="#" aria-label="LinkedIn"><i class="fab fa-linkedin-in"></i></a>
                        <a href="#" aria-label="Instagram"><i class="fab fa-instagram"></i></a>
                    </div>
                </div>
            </div>
            <div class="footer-bottom">
                <div class="container">
                    <a href="#">Política de Privacidad</a> | <a href="#">Términos de Servicio</a> | <a
                        href="#">Cookies</a>
                </div>
            </div>
        </footer>
    </div> <!-- Fin de #landing-page -->

    <!-- --- Login Modal (Sin cambios) --- -->
    <div id="login-modal" class="modal hidden">
        <div class="modal-content">
            <span class="close-btn">×</span>
            <h2>Sistema Almacén</h2>
            <p>Inicie sesión para continuar</p>
            <form id="login-form">
                <div class="form-group">
                    <label for="empresa">Empresa</label>
                    <input type="text" id="empresa" name="empresa" required placeholder="Nombre de la Empresa">
                </div>
                <div class="form-group">
                    <label for="usuario">Usuario / Correo electrónico</label>
                    <input type="text" id="usuario" name="usuario" required placeholder="usuario@empresa.com">
                </div>
                <div class="form-group">
                    <label for="contrasena">Contraseña</label>
                    <input type="password" id="contrasena" name="contrasena" required placeholder="********">
                </div>
                <button type="submit" class="btn btn-primary btn-block">Iniciar Sesión</button>
            </form>
        </div>
    </div>

    <script src="${pageContext.request.contextPath}/js/script.js"></script>
</body>
</html>