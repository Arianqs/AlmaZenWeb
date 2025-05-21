document.addEventListener('DOMContentLoaded', function () {
    // --- Manejo del Modal Login ---
    const loginButton = document.getElementById('login-button');
    const demoButton = document.getElementById('demo-button');
    const loginModal = document.getElementById('login-modal');
    const closeBtn = document.querySelector('.close-btn');

    // Función para mostrar el modal
    function showModal() {
        loginModal.classList.remove('hidden');
    }

    // Función para ocultar el modal
    function hideModal() {
        loginModal.classList.add('hidden');
    }

    // Event listeners para el modal
    if (loginButton)
        loginButton.addEventListener('click', showModal);
    if (demoButton)
        demoButton.addEventListener('click', showModal);
    if (closeBtn)
        closeBtn.addEventListener('click', hideModal);

    // Cerrar modal al hacer clic fuera del contenido
    window.addEventListener('click', function (event) {
        if (event.target === loginModal) {
            hideModal();
        }
    });
    // --- Carrusel Logic ---
    const track = document.querySelector('.carousel-track');

    if (track) { // Ejecutar solo si el carrusel existe
        const slides = Array.from(track.children);
        const nextButton = document.querySelector('.carousel-button--right');
        const prevButton = document.querySelector('.carousel-button--left');
        const dotsNav = document.querySelector('.carousel-nav');
        const dots = dotsNav ? Array.from(dotsNav.children) : [];

        // Función para obtener el ancho del slide (se necesita para calcular el movimiento)
        const getSlideWidth = () => slides.length > 0 ? slides[0].getBoundingClientRect().width : 0;

        // Función reutilizable para mover slides
        const moveToSlide = (targetIndex) => {
            const currentSlide = track.querySelector('.current-slide');
            const currentDot = dotsNav ? dotsNav.querySelector('.current-indicator') : null;
            const targetSlide = slides[targetIndex];
            const targetDot = dotsNav ? dots[targetIndex] : null;
            const slideWidth = getSlideWidth();
            const amountToMove = targetIndex * slideWidth;

            if (!targetSlide)
                return; // Salir si el slide no existe

            track.style.transform = 'translateX(-' + amountToMove + 'px)';
            currentSlide.classList.remove('current-slide');
            targetSlide.classList.add('current-slide');

            if (dotsNav && currentDot && targetDot) {
                currentDot.classList.remove('current-indicator');
                targetDot.classList.add('current-indicator');
            }

            // Actualizar estado de los botones
            if (prevButton && nextButton) {
                prevButton.classList.toggle('hidden', targetIndex === 0);
                nextButton.classList.toggle('hidden', targetIndex === slides.length - 1);
            }
        };

        // Click en flecha derecha
        nextButton.addEventListener('click', () => {
            const currentSlide = track.querySelector('.current-slide');
            const currentIndex = slides.findIndex(slide => slide === currentSlide);
            const nextIndex = currentIndex + 1;
            if (nextIndex < slides.length) { // Verificar que no sea el último
                moveToSlide(nextIndex);
            }
        });

        // Click en flecha izquierda
        prevButton.addEventListener('click', () => {
            const currentSlide = track.querySelector('.current-slide');
            const currentIndex = slides.findIndex(slide => slide === currentSlide);
            const prevIndex = currentIndex - 1;
            if (prevIndex >= 0) { // Verificar que no sea el primero
                moveToSlide(prevIndex);
            }
        });

        // Click en los puntos indicadores
        if (dotsNav) {
            dotsNav.addEventListener('click', e => {
                const targetDot = e.target.closest('button.carousel-indicator');
                if (!targetDot)
                    return;
                const targetIndex = dots.findIndex(dot => dot === targetDot);
                moveToSlide(targetIndex);
            });
        }

        // Ajustar carrusel si la ventana cambia de tamaño
        window.addEventListener('resize', () => {
            // Recalcular posición sin animación para evitar saltos
            const currentSlide = track.querySelector('.current-slide');
            const currentIndex = slides.findIndex(slide => slide === currentSlide);
            const slideWidth = getSlideWidth();
            const amountToMove = currentIndex * slideWidth;
            track.style.transition = 'none'; // Desactivar animación temporalmente
            track.style.transform = 'translateX(-' + amountToMove + 'px)';
            // Reactivar animación después de un instante
            setTimeout(() => {
                track.style.transition = 'transform 0.5s ease-in-out';
            }, 50);
        });

        // Estado inicial (asegurarse que la primera flecha izquierda esté oculta si aplica)
        const initialIndex = slides.findIndex(slide => slide.classList.contains('current-slide'));
        moveToSlide(initialIndex >= 0 ? initialIndex : 0); // Mueve al slide inicial o al primero

    } // Fin del if (track)
    // --- Fin Carrusel Logic ---






});