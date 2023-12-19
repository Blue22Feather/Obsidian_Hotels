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
            //datos crudos
            String raw_hotelName = request.getParameter("book__branch");
            String raw_roomType = request.getParameter("book__hab-type");
            String raw_dateIn = request.getParameter("book__checkIn-date");
            String raw_dateOut = request.getParameter("book__checkOut-date");

            //datos fijos
            String hotelName = gestion_form.findData("branch_name", "hotels", "branch_id", raw_hotelName);
            String roomType = gestion_form.findData("room_name", "rooms", "room_id" , raw_roomType);
            String dateIn = gestion_form.formatDate(raw_dateIn);
            String dateOut = gestion_form.formatDate(raw_dateOut);

            //Noches de estadia
            long stayLenght = gestion_form.stayNights(raw_dateIn, raw_dateOut);
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
                <div class="page has-right-rail">
                    <main class="page__main has" lang="es">
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
                                    <hr class="conector">
                                    <span class="process">3</span>
                                    <hr class="conector">
                                    <span class="process">4</span>
                                </div>
                                <div class="book-process__label">
                                    <h2>Detalles de reserva y extras</h2>
                                </div>
                            </div>
                        </div>
                        <div class="page__content">
                            <div class="PageBox multi-card__wrapper">
                                <div class="book-room">
                                    <div class="book-room__img">
                                        <img src="../assets/img/Hotels/Alma-Suites/Deluxe-Suite.jpg">
                                    </div>
                                    <div class="book-room__content">
                                        <div class="book-room__label">
                                            <h4><%= hotelName %></h3>
                                            <h2><%= roomType %></h2>
                                        </div>
                                        <div class="book-room__room-details">
                                            <p>Camas</p>
                                            <p>Area</p>
                                            <p>Capacidad</p>
                                            <p>Baños</p>
                                            <p>
                                                0
                                                <svg class="icon icon-small">
                                                    <use xlink:href="../assets/svg-resources.xml#icon-bed"></use>
                                                </svg>
                                            </p>
                                            <p>
                                                0
                                                <svg class="icon icon-small">
                                                    <use xlink:href="../assets/svg-resources.xml#icon-scale"></use>
                                                </svg>
                                            </p>
                                            <p>
                                                0
                                                <svg class="icon icon-small" style="height: 22px; width: 22px;">
                                                    <use xlink:href="../assets/svg-resources.xml#icon-symbol-people"></use>
                                                </svg>
                                            </p>
                                            <p>
                                                0
                                                <svg class="icon icon-small">
                                                    <use xlink:href="../assets/svg-resources.xml#icon-symbol-bath"></use>
                                                </svg>
                                            </p>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <form id="book-form__base" action="./booking.jsp" class="PageBox multi-contents-vert">
                                <div class="booking__wrapper">
                                    <div class="booking__details">
                                        <h2>Ingresa tu información para la reserva</h2>
                                        <div class="booking__input-row-double">
                                            <div>
                                                <label for="text-1">Nombre(s)</label>
                                                <section>
                                                    <input id="text-1" maxlength="40" name="usr_name" type="text">
                                                    <label for="text-1">
                                                        <svg class="icon">
                                                            <use id="validation-1" xlink:href=""></use>
                                                        </svg>
                                                    </label>
                                                </section>
                                            </div>
                                            <div>
                                                <label for="text-2">Apellido(s)</label>
                                                <section>
                                                    <input id="text-2" maxlength="40" name="usr_lastname" type="text">
                                                    <label for="text-2">
                                                        <svg class="icon">
                                                            <use id="validation-2" xlink:href=""></use>
                                                        </svg>
                                                    </label>
                                                </section>
                                            </div>
                                        </div>
                                        <div class="booking__input-row-double">
                                            <div>
                                                <label for="text-3">Direccion de correo electronico</label>
                                                <section>
                                                    <input id="text-3" maxlength="80" name="usr_email" type="text">
                                                    <label for="text-3">
                                                        <svg class="icon">
                                                            <use id="validation-3" xlink:href=""></use>
                                                        </svg>
                                                    </label>
                                                </section>
                                            </div>
                                            <div>
                                                <label for="text-4">Numero de telefono</label>
                                                <section>
                                                    <input id="text-4" name="usr_phoneNumber" type="text" maxlength="10">
                                                    <label for="text-4">
                                                        <svg class="icon">
                                                            <use id="validation-4" xlink:href=""></use>
                                                        </svg>
                                                    </label>
                                                </section>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="extras__wrapper">
                                        <div class="extras__card">
                                            <div class="card__summary">
                                                <span>
                                                    <input id="check-1" type="checkbox">
                                                    <label for="check-1">
                                                        <svg class="icon">
                                                            <use xlink:href="../assets/svg-resources.xml#icon-check"></use>
                                                        </svg>
                                                    </label>
                                                </span>
                                                <section>
                                                    icono
                                                </section>
                                                <div>
                                                    <h2>
                                                        titulo
                                                        <button>
                                                            <svg class="icon">
                                                                <use xlink:href="../assets/svg-resources.xml#icon-minimalist-arrow"></use>
                                                            </svg>
                                                        </button>
                                                    </h2>
                                                    <p>descripcion</p>
                                                </div>
                                            </div>
                                            <div class="card__content">
                                                algo
                                            </div>
                                        </div>
                                        <div class="extras__card">
                                            <div class="card__summary">
                                                <span>
                                                    <input id="check-2" type="checkbox">
                                                    <label for="check-2">
                                                        <svg class="icon">
                                                            <use xlink:href="../assets/svg-resources.xml#icon-check"></use>
                                                        </svg>
                                                    </label>
                                                </span>
                                                <section>
                                                    icono
                                                </section>
                                                <div>
                                                    <h2>
                                                        titulo
                                                        <button>
                                                            <svg class="icon">
                                                                <use xlink:href="../assets/svg-resources.xml#icon-minimalist-arrow"></use>
                                                            </svg>
                                                        </button>
                                                    </h2>
                                                    <p>descripcion</p>
                                                </div>
                                            </div>
                                            <div class="card__content">
                                                algo
                                            </div>
                                        </div>
                                        <div class="extras__card">
                                            <div class="card__summary">
                                                <span>
                                                    <input id="check-3" type="checkbox">
                                                    <label for="check-3">
                                                        <svg class="icon">
                                                            <use xlink:href="../assets/svg-resources.xml#icon-check"></use>
                                                        </svg>
                                                    </label>
                                                </span>
                                                <section>
                                                    icono
                                                </section>
                                                <div>
                                                    <h2>
                                                        titulo
                                                        <button>
                                                            <svg class="icon">
                                                                <use xlink:href="../assets/svg-resources.xml#icon-minimalist-arrow"></use>
                                                            </svg>
                                                        </button>
                                                    </h2>
                                                    <p>descripcion</p>
                                                </div>
                                            </div>
                                            <div class="card__content">
                                                algo
                                            </div>
                                        </div>
                                        <div class="extras__card">
                                            <div class="card__summary">
                                                <span>
                                                    <input id="check-4" type="checkbox">
                                                    <label for="check-4">
                                                        <svg class="icon">
                                                            <use xlink:href="../assets/svg-resources.xml#icon-check"></use>
                                                        </svg>
                                                    </label>
                                                </span>
                                                <section>
                                                    icono
                                                </section>
                                                <div>
                                                    <h2>
                                                        titulo
                                                        <button>
                                                            <svg class="icon">
                                                                <use xlink:href="../assets/svg-resources.xml#icon-minimalist-arrow"></use>
                                                            </svg>
                                                        </button>
                                                    </h2>
                                                    <p>descripcion</p>
                                                </div>
                                            </div>
                                            <div class="card__content">
                                                algo
                                            </div>
                                        </div>
                                        <div class="extras__card">
                                            <div class="card__summary">
                                                <span>
                                                    <input id="check-5" type="checkbox">
                                                    <label for="check-5">
                                                        <svg class="icon">
                                                            <use xlink:href="../assets/svg-resources.xml#icon-check"></use>
                                                        </svg>
                                                    </label>
                                                </span>
                                                <section>
                                                    icono
                                                </section>
                                                <div>
                                                    <h2>
                                                        titulo
                                                        <button>
                                                            <svg class="icon">
                                                                <use xlink:href="../assets/svg-resources.xml#icon-minimalist-arrow"></use>
                                                            </svg>
                                                        </button>
                                                    </h2>
                                                    <p>descripcion</p>
                                                </div>
                                            </div>
                                            <div class="card__content">
                                                algo
                                            </div>
                                        </div>
                                    </div>
                                    <div class="hidden_values">
                                        <input name="prev_dateIn" type="radio" checked="true" value="<%= dateIn %>">
                                        <input name="prev_dateOut" type="radio" checked="true" value="<%= dateOut %>">
                                        <input name="prev_branch" type="radio" checked="true" value="<%= hotelName %>">
                                        <input name="prev_room" type="radio" checked="true" value="<%= roomType %>">
                                    </div>
                                </div>
                            </form>
                        </div>
                        <div class="page__footer"></div>
                    </main>
                    <aside class="page__right-rail">
                        <button class="right-rail-toggle">
                            <svg class="icon">
                                <use xlink:href="../assets/svg-resources.xml#icon-minimalist-arrow"></use>
                            </svg>
                        </button>
                        <div class="right-rail-wrapper">
                            <div class="sticky-modules-wrapper">
                                <section class="rail-module">
                                    <h2>Resumen de reserva</h2>
                                    <div class="round-square">
                                        <div class="double-text tittles">
                                            <h4>Check-In</h4>
                                            <h4>Check-Out</h4>
                                        </div>
                                        <div class="double-text content">
                                            <p name="check-in-date"><%= dateIn %></p>
                                            <hr>
                                            <p name="check-out-date"><%= dateOut %></p>
                                            <p name="check-in-time">03:00 pm</p>
                                            <hr>
                                            <p name="check-out-time">11:00 am</p>
                                        </div>
                                        <div class="single-text">
                                            <h4>Duración total de la estancia:</h2>
                                            <span>
                                                <p name="days-lenght"><%= stayLenght %> noches</p>
                                                <svg class="icon">
                                                    <use xlink:href="../assets/svg-resources.xml#icon-calendar"></use>
                                                </svg>
                                            </span>
                                        </div>
                                        <div class="single-text">
                                            <h4>Seleccion:</h2>
                                            <span name="selection-type">nombre de seleccion</span>
                                            <a name="reselect" class="link-action">Cambiar la seleccion</a>
                                        </div>
                                    </div>
                                    <h2>Resumen de precios</h2>
                                    <div class="facture__wrapper">
                                        <div class="double-text__row">
                                            <p>Habitacion</p>
                                            <span>{value}</span>
                                        </div>
                                        <div class="double-text__row">
                                            <p>Extras</p>
                                            <span>{value}</span>
                                        </div>
                                        <div class="double-text__row">
                                            <p>IVA</p>
                                            <span>{value}</span>
                                        </div>
                                        <div class="double-text__row">
                                            <h2>Total</h2>
                                            <span>{value}</span>
                                        </div>
                                    </div>
                                    <div class="submit-wrapper">
                                        <button class="button fade" type="button" onclick="Booking_Validations()">Solicitar reserva</button>
                                    </div>
                                </section>
                            </div>
                        </div>
                    </aside>
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
        <script aria-description="side-panel-function">
            var togglePanel_btn = document.getElementsByClassName("right-rail-toggle")[0];
            togglePanel_btn.addEventListener('click', function() {
                var pannelObj = document.getElementsByClassName("page__right-rail")[0],
                    pannelState = pannelObj.classList.contains("is-rail-hidden");
                if (pannelState == false) {
                    pannelObj.classList.add('is-rail-hidden');
                } else {
                    pannelObj.classList.remove('is-rail-hidden');
                }
            });
        </script>
        <script src="../assets/scripts/booking_functions.js"></script>
    </body>
</html>