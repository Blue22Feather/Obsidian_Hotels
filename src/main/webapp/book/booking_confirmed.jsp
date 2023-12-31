<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import = "obsidian_systems.gestion_form"%>

<!DOCTYPE html>

<html>
    <head>
        <meta charset="UTF-8">
        <title>Obsidian House | Hotels - Resort - Casino</title>
        <link rel="shortcut icon" type="image/x-icon" href="../assets/icon/ObsidianHotels.ico" />
        <link rel="stylesheet" href="../assets/stylesheets/general-styles.css">
        <link rel="stylesheet" href="../assets/stylesheets/body-styles.css">
        <link rel="stylesheet" href="../assets/stylesheets/component-styles.css">
    </head>
    <body class="theme-dark">
        <%
            //Datos crudos
            String raw_hotelName = request.getParameter("prev_branch");
            String raw_roomType = request.getParameter("prev_room");
            String raw_dateIn = request.getParameter("prev_dateIn");
            String raw_dateOut = request.getParameter("prev_dateOut");
            
            String raw_guestName = request.getParameter("prev_guestName");
            String raw_guestLastName = request.getParameter("prev_guestLastName");
            String raw_guestEmail = request.getParameter("prev_guestEmail");
            String raw_guestPhone = request.getParameter("prev_guestPhone");

            int raw_stayLenght = (int) gestion_form.stayNights(raw_dateIn, raw_dateOut);

            //Datos fijos
            String hotelName = gestion_form.findData("branch_name", "hotels", "branch_id", raw_hotelName);
            String roomName = gestion_form.findDataDouble("room_name", "rooms", "room_type" , raw_roomType, "hotel_id", raw_hotelName);
            String dateIn = gestion_form.formatDate(raw_dateIn);
            String dateOut = gestion_form.formatDate(raw_dateOut);
            String roomImag = gestion_form.findDataDouble("room_img", "rooms", "room_type" , raw_roomType, "hotel_id", raw_hotelName);

            String stayLenght = String.valueOf(raw_stayLenght) + " Noches";

            //resultados
            gestion_form.guestAdd(raw_guestName, raw_guestLastName, raw_guestPhone, raw_guestEmail);
            String bookFinal = gestion_form.reservationAdd(raw_guestName, raw_guestLastName, raw_dateIn, raw_dateOut, raw_roomType, raw_hotelName);

        %>
        <div class="global-nav">
            <div class="global-nav__top">
                <nav class="global-nav__nav" aria-label="Navegación en el sitio">
                    <a target="_blank" rel="noopener noreferrer" href="https://buenosaires.gob.ar/educacion/codocodo/el-programa" class="global-nav__logo" label="logo" aria-label="Aulas virtuales del curso">
                        <img src="../assets/img/CaC-logo.png" width="60px" height="28px">
                        <span class="global-nav__label"> « CaC » </span>
                    </a>
                    <a href="" id="search-btn" class="global-nav__icon" title="Buscar">
                        <svg class="icon">
                            <use xlink:href="../assets/svg-resources.xml#icon-magnifying-glass"></use>
                        </svg>
                    </a>
                    <div class="global-nav__links">
                        <a target="_blank" rel="noopener noreferrer" href="https://meet.google.com/woh-kgvq-ftc" class="global-nav__link">
                            <span class="global-nav__icon has-background">
                                <svg class="icon">
                                    <use xlink:href="../assets/svg-resources.xml#icon-g-meet"></use>
                                </svg>
                            </span>
                            <p class="global-nav__label">Curso</p>
                        </a>
                        <a target="_blank" rel="noopener noreferrer" href="https://drive.google.com/drive/folders/1Iv_z7TY5NEblnPsQuxQBK_PQ0OjvVq_E" class="global-nav__link">
                            <span class="global-nav__icon has-background">
                                <svg class="icon">
                                    <use xlink:href="../assets/svg-resources.xml#icon-g-drive"></use>
                                </svg>
                            </span>
                            <p class="global-nav__label">Recursos</p>
                        </a>
                        <a target="_blank" rel="noopener noreferrer" href="https://www.youtube.com/playlist?list=PLMBLJyhQOSWxHBYa2Nyki0bGPK4hb3J2g" class="global-nav__link">
                            <span class="global-nav__icon has-background">
                                <svg class="icon">
                                    <use xlink:href="../assets/svg-resources.xml#icon-tele"></use>
                                </svg>
                            </span>
                            <p class="global-nav__label">Playlist de Youtube</p>
                        </a>
                        <a target="_blank" rel="noopener noreferrer" href="https://www.facebook.com/codoacodooficial/" class="global-nav__link" label="Facebook Oficil">
                            <span class="global-nav__icon has-background">
                                <svg class="icon">
                                    <use xlink:href="../assets/svg-resources.xml#icon-facebook"></use>
                                </svg>
                            </span>
                            <p class="global-nav__label">Redes Sociales</p>
                        </a>
                        <a target="_blank" rel="noopener noreferrer" href="https://aulasvirtuales.bue.edu.ar/my/" class="global-nav__link" label="Aulas Virtuales">
                            <span class="global-nav__icon has-background">
                                <svg class="icon">
                                    <use xlink:href="../assets/svg-resources.xml#icon-book"></use>
                                </svg>
                            </span>
                            <p class="global-nav__label">Aulas Virtuales</p>
                        </a>
                    </div>
                </nav>
            </div>                
            <div class="global-nav__bottom">
                <div class="dropdown open-to-right is-attached-to-bottom">
                    <div class="dropdown__toggle">
                        <div class="global-nav__icon">
                            <div class="avatar">
                                <img src="../assets/img/avatar_alumn.jpg" title="Alumno">
                            </div>
                        </div>
                    </div>
                    <div class="dropdown__content">
                        <ul class="list is-linked">
                            <li>
                                <a><span style="font-weight: 1000;">Programa Codo a Codo 2023</span></a>
                            </li>
                            <li>
                                <a><span style="font-weight: 1000;">CaC Comision: </span>23548</a>
                            </li>
                            <li>
                                <a><span style="font-weight: 1000;">Alumno: </span>Miguel E. Diaz G.</a>
                            </li>
                            <li>
                                <a><span style="font-weight: 1000;">DNI: </span>95.887.973</a>
                            </li>
                            <li>
                                <a><span style="font-weight: 1000;">E-mail de contacto: </span>walther22wolff.gedler@gmail.com</a>
                            </li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
        <div class="sticky-header">
            <a href="../" class="sticky-header__logo">
                <img src="../assets/icon/obsidian-logo.png" width="42" height="42" alt="Obsidian House">
            </a>
            <a href="../" class="sticky-header__sitename">Obsidian House</a>
            <nav class="site-header__local-nav">
                <ul class="tabs">
                    <li class="dropdown">
                        <div class="tabs__tab-label dropdown__toggle first-level-item">
                            <a href="#">
                                <svg class="icon icon-tiny">
                                    <use href="../assets/svg-resources.xml#icon-book-tiny"></use>
                                </svg>
                                <span>Explorar</span>
                            </a>
                            <svg class="icon icon-tiny dropdown__toggle-chevron">
                                <use href="../assets/svg-resources.xml#icon-dropdown-tiny"></use>
                            </svg>
                        </div>
                        <div class="is-not-scrollable dropdown__content">
                            <ul class="list is-linked">
                                <li>
                                    <a href="../">
                                        <svg class="icon icon-tiny">
                                            <use href="../assets/svg-resources.xml#icon-home-tiny"></use>
                                        </svg>
                                        <span>Portada</span>
                                    </a>
                                </li>
                                <li>
                                    <a href="../explore/Obsidian_Casino/">
                                        <span>Casino</span>
                                    </a>
                                </li>
                                <li>
                                    <a href="../explore/Obsidian_Membership/">
                                        <span>Membresia</span>
                                    </a>
                                </li>
                                <li>
                                    <a href="../explore/Obsidian_Promotions/">
                                        <span>Promociones</span>
                                    </a>
                                </li>
                                <li>
                                    <a href="../explore/Obsidian_Resorts/">
                                        <span>Actividades</span>
                                    </a>
                                </li>
                                <li>
                                    <a href="../explore/Obsidian_Records/">
                                        <span>Galeria</span>
                                    </a>
                                </li>
                            </ul>
                        </div>
                    </li>
                    <li class="dropdown">
                        <div class="tabs__tab-label dropdown__toggle first-level-item">
                            <a href="#">
                                <span>Reservar</span>
                            </a>
                            <svg class="icon icon-tiny dropdown__toggle-chevron">
                                <use href="../assets/svg-resources.xml#icon-dropdown-tiny"></use>
                            </svg>
                        </div>
                        <div class="is-not-scrollable dropdown__content">
                            <ul class="list is-linked">
                                <li>
                                    <a href="../book/">
                                        <svg class="icon icon-tiny">
                                            <use href="../assets/svg-resources.xml#icon-home-tiny"></use>
                                        </svg>
                                        <span>Planificar</span>
                                    </a>
                                </li>
                                <li>
                                    <a href="../book/Packages/">
                                        <span>Paquetes</span>
                                    </a>
                                </li>
                            </ul>
                        </div>
                    </li>
                    <li class="dropdown">
                        <div class="tabs__tab-label dropdown__toggle first-level-item">
                            <a href="#">
                                <span>Eventos</span>
                            </a>
                            <svg class="icon icon-tiny dropdown__toggle-chevron">
                                <use href="../assets/svg-resources.xml#icon-dropdown-tiny"></use>
                            </svg>
                        </div>
                        <div class="is-not-scrollable dropdown__content">
                            <ul class="list is-linked">
                                <li>
                                    <a href="../events/">
                                        <svg class="icon icon-tiny">
                                            <use href="../assets/svg-resources.xml#icon-home-tiny"></use>
                                        </svg>
                                        <span>Tablon de Eventos</span>
                                    </a>
                                </li>
                                <li>
                                    <a href="../events/Private_Events/">
                                        <span>Reservar para eventos</span>
                                    </a>
                                </li>
                            </ul>
                        </div>
                    </li>
                </ul>
            </nav>
        </div>
        <div class="main-container">
            <div class="resizable-container">
                <div class="site-header-wrapper">
                    <header class="site-header">
                        <a href="../" class="site-header__image">
                            <img src="../assets/img/Obsidian/NorseCabinObsidian__Gold.png" alt="Obsidian House">
                        </a>
                        <div class="site-header__top-container">
                            <div class="site-header__site-name-wrapper">
                                <a href="../" class="site-header__site-name">
                                    <span class="special">Obsidian House</span>
                                    <span>Hotels, Resort & Casino</span>
                                </a>
                            </div>
                        </div>
                        <div class="site-header__local-nav">
                            <ul class="tabs">
                                <li class="dropdown">
                                    <div class="tabs__tab-label dropdown__toggle first-level-item">
                                        <a href="#">
                                            <svg class="icon icon-tiny">
                                                <use href="../assets/svg-resources.xml#icon-book-tiny"></use>
                                            </svg>
                                            <span>Explorar</span>
                                        </a>
                                        <svg class="icon icon-tiny dropdown__toggle-chevron">
                                            <use href="../assets/svg-resources.xml#icon-dropdown-tiny"></use>
                                        </svg>
                                    </div>
                                    <div class="is-not-scrollable dropdown__content">
                                        <ul class="list is-linked">
                                            <li>
                                                <a href="../">
                                                    <svg class="icon icon-tiny">
                                                        <use href="../assets/svg-resources.xml#icon-home-tiny"></use>
                                                    </svg>
                                                    <span>Portada</span>
                                                </a>
                                            </li>
                                            <li>
                                                <a href="../explore/Obsidian_Casino/">
                                                    <span>Casino</span>
                                                </a>
                                            </li>
                                            <li>
                                            <li>
                                                <a href="../explore/Obsidian_Membership/">
                                                    <span>Membresia</span>
                                                </a>
                                            </li>
                                            <li>
                                                <a href="../explore/Obsidian_Promotions/">
                                                    <span>Promociones</span>
                                                </a>
                                            </li>
                                            <li>
                                                <a href="../explore/Obsidian_Resorts/">
                                                    <span>Actividades</span>
                                                </a>
                                            </li>
                                            <li>
                                                <a href="../explore/Obsidian_Records/">
                                                    <span>Galeria</span>
                                                </a>
                                            </li>
                                        </ul>
                                    </div>
                                </li>
                                <li class="dropdown">
                                    <div class="tabs__tab-label dropdown__toggle first-level-item">
                                        <a href="#">
                                            <span>Reservar</span>
                                        </a>
                                        <svg class="icon icon-tiny dropdown__toggle-chevron">
                                            <use href="../assets/svg-resources.xml#icon-dropdown-tiny"></use>
                                        </svg>
                                    </div>
                                    <div class="is-not-scrollable dropdown__content">
                                        <ul class="list is-linked">
                                            <li>
                                                <a href="../book/">
                                                    <svg class="icon icon-tiny">
                                                        <use href="../assets/svg-resources.xml#icon-home-tiny"></use>
                                                    </svg>
                                                    <span>Planificar</span>
                                                </a>
                                            </li>
                                            <li>
                                                <a href="../book/Packages/">
                                                    <span>Paquetes</span>
                                                </a>
                                            </li>
                                        </ul>
                                    </div>
                                </li>
                                <li class="dropdown">
                                    <div class="tabs__tab-label dropdown__toggle first-level-item">
                                        <a href="#">
                                            <span>Eventos</span>
                                        </a>
                                        <svg class="icon icon-tiny dropdown__toggle-chevron">
                                            <use href="../assets/svg-resources.xml#icon-dropdown-tiny"></use>
                                        </svg>
                                    </div>
                                    <div class="is-not-scrollable dropdown__content">
                                        <ul class="list is-linked">
                                            <li>
                                                <a href="../events/">
                                                    <svg class="icon icon-tiny">
                                                        <use href="../assets/svg-resources.xml#icon-home-tiny"></use>
                                                    </svg>
                                                    <span>Tablon de Eventos</span>
                                                </a>
                                            </li>
                                            <li>
                                                <a href="../events/Private_Events/">
                                                    <span>Reservar para eventos</span>
                                                </a>
                                            </li>
                                        </ul>
                                    </div>
                                </li>
                            </ul>
                        </div>
                    </header>
                </div>
                <div class="page">
                    <main class="page__main" lang="es">
                        <div class="page__side-tools__wrapper">
                            <div class="page__side-tools">
                                <button class="page__side-tool" name="content-size-toggle" aria-label="Expandir">
                                    <svg class="icon icon-small">
                                        <use xlink:href="../assets/svg-resources.xml#icon-zoom-in-small"></use>
                                    </svg>
                                </button>
                            </div>
                        </div>
                        <div class="page__header">
                            <div class="book-process">
                                <div class="book-process__pointers">
                                    <span class="process done">1</span>
                                    <hr class="conector done">
                                    <span class="process done">2</span>
                                    <hr class="conector done">
                                    <span class="process done">3</span>
                                    <hr class="conector done">
                                    <span class="process done">4</span>
                                </div>
                                <div class="book-process__label">
                                    <h2>Confirmacion</h2>
                                </div>
                            </div>
                        </div>
                        <div class="page__content">
                            <div class="Confirmation__wrapper">
                                <div class="Confirmation__icon">
                                    <svg class="icon">
                                        <use href="../assets/svg-resources.xml#icon-check"></use>
                                    </svg>
                                </div>
                                <div class="Confirmation__content">
                                    <h2>Su reserva esta confirmada</h2>
                                    <p>Le llegara un correo electronico con un mensaje similar a esta pantalla, a su vez recuerde que si tiene alguna regunta o especificacion siempre puede ponerse en contacto con nosotros.</p>
                                </div>
                            </div>
                            <div class="Booking-Confirmation__wrapper">
                                <h2>Detalles de la reserva</h2>
                                <div class="Booking-Confirmation__table">
                                    <div>
                                        <h4>Huesped</h4>
                                        <span>
                                            <p><%= raw_guestName + " " + raw_guestLastName %></p>
                                        </span>
                                    </div>
                                    <div>
                                        <h4>Fecha de entrada</h4>
                                        <span>
                                            <p><%= dateIn %></p>
                                            <p>Hora</p>
                                        </span>
                                    </div>
                                    <div>
                                        <h4>Fecha de salida</h4>
                                        <span>
                                            <p><%= dateOut %></p>
                                            <p>Hora</p>
                                        </span>
                                    </div>
                                    <div>
                                        <h4>Tu reserva</h4>
                                        <span>
                                            <p><%= roomName + " en " + hotelName + " por " + stayLenght%></p>
                                        </span>
                                    </div>
                                    <div>
                                        <h4>Numero de telefono</h4>
                                        <span>
                                            <p><%= raw_guestPhone %></p>
                                        </span>
                                    </div>
                                    <div>
                                        <h4>Email</h4>
                                        <span>
                                            <p><%= raw_guestEmail %></p>
                                        </span>
                                    </div>
                                    <div>
                                        <h4>Numero de reserva</h4>
                                        <span>
                                            <p>#<%= bookFinal %></p>
                                        </span>
                                    </div>
                                </div>
                            </div>
                            <div class="Booking-Confirmation__wrapper">
                                <div class="Booking-Confirmation__ticket">
                                    <h2>Recibo</h2>
                                    <p>El recibo es opcional, en el momento de su llegada al hotel solo debe presentar sus datos en recepcion y el codigo de la recerba, el recibo es para que usted tenga constancia de sus gastos.</p>
                                    <div>
                                        <a href="../testing/booking.jsp" target="_blank" class="button standard">Descargar recibo</a>
                                        <a href="../" class="button standard">Regresar a la portada</a>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="page__footer"></div>
                    </main>
                </div>
                <div id="mixed-content-footer" class="mcf-wolf">
                    <div class="mcf-wrapper"></div>
                </div>
            </div>
            <footer class="global-footer">
                <div class="global-footer__top">
                    <div class="global-footer__content">
                        <div class="main-content">
                            <div name="logotype">
                                <img src="../assets/img/Obsidian/ExpandedHotelName__Squared-GoldVersion.png" alt="">
                            </div>
                            <hr>
                            <div name="links-one">
                                <div class="double-text">
                                    <a href="#">Blog</a>
                                    <a href="#">Empleos</a>
                                    <a href="#">Contáctenos</a>
                                    <a href="#">Donaciones</a>
                                    <a href="#">Preguntas más frecuentes</a>
                                    <a href="#">Tarjetas de regalo</a>
                                    <a href="#">Reservaciones de hotel</a>
                                    <a href="#">Tour de recuerdos</a>
                                    <a href="#">Objetos perdidos</a>
                                    <a href="#">Restaurantes</a>
                                    <a href="#">Mapas de propiedades</a>
                                    <a href="#">Responsabilidad social</a>
                                    <a href="#">Transporte</a>
                                    <a href="#">Membresia Obsidian</a>
                                    <a href="#">Juegos de Obsidian</a>
                                    <a href="#">Apuesta de Obsidian</a>
                                    <a href="#">Apuestas deportivas</a>
                                </div>
                            </div>
                            <hr>
                            <div name="links-two">
                                <div name="social-networks">
                                    <a target="_blank" rel="noopener noreferrer" href="https://www.facebook.com/turisurbrc/">
                                        <svg class="icon">
                                            <use xlink:href="../assets/svg-resources.xml#icon-facebook-logo"></use>
                                        </svg>
                                    </a>
                                    <a target="_blank" rel="noopener noreferrer" href="https://twitter.com/TurisurBrc">
                                        <svg class="icon">
                                            <use xlink:href="../assets/svg-resources.xml#icon-twitter-x-logo"></use>
                                        </svg>
                                    </a>
                                    <a target="_blank" rel="noopener noreferrer" href="https://www.instagram.com/turisurbrc/">
                                        <svg class="icon">
                                            <use xlink:href="../assets/svg-resources.xml#icon-instagram-logo"></use>
                                        </svg>
                                    </a>
                                    <a target="_blank" rel="noopener noreferrer" href="https://www.youtube.com/channel/UCsGTYEGGn0W6p_u38sHeksQ">
                                        <svg class="icon">
                                            <use xlink:href="../assets/svg-resources.xml#icon-youtube-logo"></use>
                                        </svg>
                                    </a>
                                    <a target="_blank" rel="noopener noreferrer" href="https://www.linkedin.com/company/turisur/">
                                        <svg class="icon">
                                            <use xlink:href="../assets/svg-resources.xml#icon-linkedin-logo"></use>
                                        </svg>
                                    </a>
                                </div>
                                <div name="central-text">
                                    <a target="_blank" rel="noopener noreferrer" href="https://maps.app.goo.gl/o8biA6kvfb4deU9r8">John O'Connor 130, R8400 San Carlos de Bariloche, Río Negro</a>
                                    <p>+54 294 123-4567</p>
                                </div>
                                <div name="dropdown" class="dropdown">
                                    <div class="dropdown__toggle">
                                        <span>Otras Ubicaciones</span>
                                        <svg class="icon dropdown__toggle-chevron">
                                            <use href="../assets/svg-resources.xml#icon-dropdown-tiny"></use>
                                        </svg>
                                    </div>
                                    <div class="is-not-scrollable dropdown__content">
                                        <ul class="list is-linked">
                                            <li>
                                                <a target="_blank" rel="noopener noreferrer" href="https://maps.app.goo.gl/XGaxSdN8HBbw3FhL6">
                                                    <span>Alma del Lago Suites & SPA</span>
                                                </a>
                                            </li>
                                            <li>
                                                <a target="_blank" rel="noopener noreferrer" href="https://maps.app.goo.gl/vVXN612fUDQ2U3UCA">
                                                    <span>Charming Luxury Lodge & Private Spa</span>
                                                </a>
                                            </li>
                                            <li>
                                                <a target="_blank" rel="noopener noreferrer" href="https://maps.app.goo.gl/9gDw5uAejLfVqUhY7">
                                                    <span>El Casco Art Hotel</span>
                                                </a>
                                            </li>
                                            <li>
                                                <a target="_blank" rel="noopener noreferrer" href="https://maps.app.goo.gl/Vdpuv7PxwMgsa2pa7">
                                                    <span>Llao Llao Hotel & Resort</span>
                                                </a>
                                            </li>
                                            <li>
                                                <a target="_blank" rel="noopener noreferrer" href="https://maps.app.goo.gl/RDF5knHJ6qwxEScc6">
                                                    <span>Estancia Peuma Hue</span>
                                                </a>
                                            </li>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="extra-content">Copyright © 2023 Obsidian House - San Carlos de Bariloche, Río Negro Reservados todos los derechos.</div>
                    </div>
                </div>
                <div class="global-footer__bottom">
                    <div class="multi-logo__wrapper">
                        <div class="multi-logo__item">
                            <img src="../assets/img/PagesIcons/alma-suites__logo.png" alt="">
                        </div>
                        <div class="multi-logo__item">
                            <img src="../assets/img/PagesIcons/casco-art-hotel__logo.png" alt="">
                        </div>
                        <div class="multi-logo__item">
                            <img src="../assets/img/PagesIcons/charming-luxury-lodge__logo.png" alt="">
                        </div>
                        <div class="multi-logo__item">
                            <img src="../assets/img/PagesIcons/estancia-peuma-hue__logo.png" alt="">
                        </div>
                        <div class="multi-logo__item">
                            <img src="../assets/img/PagesIcons/llaollao-logo.svg" alt="">
                        </div>
                    </div>
                </div>
            </footer>
        </div>
        <script name="resizable-container-function">
            var resize_btn = document.getElementsByName("content-size-toggle")[0];
            resize_btn.addEventListener('click', function() {
                var bodyobj = document.getElementsByTagName("body")[0],
                    bodystate = bodyobj.classList.contains("is-content-expanded"),
                    button_open = "../assets/svg-resources.xml#icon-zoom-in-small",
                    button_close = "../assets/svg-resources.xml#icon-zoom-out-small",
                    resize_btn_use = resize_btn.children[0].children[0];
                if (bodystate == false) {
                    bodyobj.classList.add('is-content-expanded');
                    resize_btn_use.setAttributeNS('http://www.w3.org/1999/xlink', 'xlink:href', button_close);
                } else {
                    bodyobj.classList.remove('is-content-expanded');
                    resize_btn_use.setAttributeNS('http://www.w3.org/1999/xlink', 'xlink:href', button_open);
                }
            });
        </script>
        <script aria-description="sticky-header-function">
            window.addEventListener('scroll', function() {
                const elemento = document.getElementsByClassName('sticky-header');
                var scrolling = window.scrollY > 250;
                elemento[0].classList[scrolling ? 'add' : 'remove']('is-visible');
            });
        </script>
    </body>
</html>