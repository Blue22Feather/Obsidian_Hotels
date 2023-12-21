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
                                    <hr class="conector">
                                    <span class="process">2</span>
                                    <hr class="conector">
                                    <span class="process">3</span>
                                    <hr class="conector">
                                    <span class="process">4</span>
                                </div>
                                <div class="book-process__label">
                                    <h2>Seleccion de habitacion y fechas</h2>
                                </div>
                            </div>
                        </div>
                        <div class="page__content">
                            <form action="booking_details.jsp" class="PageBox BackgroundBlur multi-contents-vert">
                                <div class="multi-card__wrapper card-row__slim">
                                    <div aria-description="checkin-cell">
                                        <input id="date1" name="book__checkIn-date" type="date" required>
                                        <label for="date1">fecha de ingreso:</label>
                                    </div>
                                    <div aria-description="checkout-cell">
                                        <input id="date2" name="book__checkOut-date" type="date" required>
                                        <label for="date2">fecha de salida:</label>
                                    </div>
                                </div>
                                <div class="tabber__form">
                                    <div class="tabs__wrapper">
                                        <div class="tabs">
                                            <div class="tabs__tab">
                                                <input type="radio" id="tab-1" name="book__branch" value="1" onchange="currentTabContent(1)">
                                                <label for="tab-1">Alma del Lago Suites & Spa</label>
                                            </div>
                                            <div class="tabs__tab">
                                                <input type="radio" id="tab-2" name="book__branch" value="2" onchange="currentTabContent(2)">
                                                <label for="tab-2">El Casco Art Hotel</label>
                                            </div>
                                            <div class="tabs__tab">
                                                <input type="radio" id="tab-3" name="book__branch" value="3" onchange="currentTabContent(3)">
                                                <label for="tab-3">Charming Luxury Lodge</label>
                                            </div>
                                            <div class="tabs__tab">
                                                <input type="radio" id="tab-4" name="book__branch" value="4" onchange="currentTabContent(4)">
                                                <label for="tab-4">Estancia Peuma Hue</label>
                                            </div>
                                            <div class="tabs__tab">
                                                <input type="radio" id="tab-5" name="book__branch" value="5" onchange="currentTabContent(5)">
                                                <label for="tab-5">Llao Llao Resort</label>
                                            </div>
                                        </div>
                                    </div>
                                    <div name="alma-room" class="tabs__content-wrapper">
                                        <div class="tabs__content multi-card__wrapper">
                                            <div class="card-info-row">
                                                <section class="card-info-row__content">
                                                    <div csstype="header">
                                                        <h2>Classic Lago</h2>
                                                    </div>
                                                    <div csstype="content">
                                                        <p>Habitación Doble con Vista al Lago</p>
                                                        <div class="details-section">
                                                            <section><h2>Características de la Habitación Classic Lago</h2></section>
                                                            <hr>
                                                            <section>
                                                                <h4>Tamaño</h4>
                                                                <li>Aproximadamente 25 metros cuadrados</li>
                                                            </section>
                                                            <section>
                                                                <h4>Capacidad</h4>
                                                                <li>Hasta 2 personas</li>
                                                            </section>
                                                            <section>
                                                                <h4>Cama(s)</h4>
                                                                <li>Cama Queen size (1,50 mts x 2 mts)</li>
                                                            </section>
                                                            <section>
                                                                <h4>Baño</h4>
                                                                <li>Amplio baño con ducha y bañera</li>
                                                            </section>
                                                            <section>
                                                                <h4>Amenidades</h4>
                                                                <li>TV por cable</li>
                                                                <li>Caja de seguridad digital</li>
                                                                <li>Conexión Wi-Fi de alta velocidad sin costo adicional</li>
                                                                <li>Climatización individual</li>
                                                                <li>Frigobar</li>
                                                            </section>
                                                        </div>
                                                    </div>
                                                    <div csstype="footer">
                                                        <button type="submit" class="button standard">
                                                            <input type="radio" id="alma-room_1" value="1" name="book__hab-type" required>
                                                            <label for="alma-room_1">seleccionar esta habitacion</label>
                                                        </button>
                                                    </div>
                                                </section>
                                                <section csspos="center" class="card-info-row__img">
                                                    <img csstype="landscape" src="../assets/img/Hotels/Alma-Suites/Classic-Lago.jpg" alt="">
                                                    <p><%= gestion_form.roomDispoText("1","1")%></p>
                                                </section>
                                            </div>
                                            <div class="card-info-row">
                                                <section class="card-info-row__content">
                                                    <div csstype="header">
                                                        <h2>Superior Lago</h2>
                                                    </div>
                                                    <div csstype="content">
                                                        <p>Habitación Doble con Vista al Lago</p>
                                                        <div class="details-section">
                                                            <section><h2>Características de la Habitación Superior Lago</h2></section>
                                                            <hr>
                                                            <section>
                                                                <h4>Tamaño</h4>
                                                                <li>Aproximadamente 32 metros cuadrados</li>
                                                            </section>
                                                            <section>
                                                                <h4>Capacidad</h4>
                                                                <li>Hasta 3 o 4 personas</li>
                                                            </section>
                                                            <section>
                                                                <h4>Cama(s)</h4>
                                                                <li>Cama Queen size (1,80 mts x 2 mts) o 2 camas twin</li>
                                                            </section>
                                                            <section>
                                                                <h4>Baño</h4>
                                                                <li>Amplio baño con ducha y bañera</li>
                                                            </section>
                                                            <section>
                                                                <h4>Amenidades</h4>
                                                                <li>TV por cable</li>
                                                                <li>Caja de seguridad digital</li>
                                                                <li>Conexión Wi-Fi de alta velocidad sin costo adicional</li>
                                                                <li>Climatización individual</li>
                                                                <li>Frigobar</li>
                                                                <li>Escritorio</li>
                                                                <li>Vistas panoramicas del lago</li>
                                                            </section>
                                                        </div>
                                                    </div>
                                                    <div csstype="footer">
                                                        <button type="submit" class="button standard">
                                                            <input type="radio" id="alma-room_2" value="2" name="book__hab-type" required>
                                                            <label for="alma-room_2">seleccionar esta habitacion</label>
                                                        </button>
                                                    </div>
                                                </section>
                                                <section csspos="center" class="card-info-row__img">
                                                    <img csstype="landscape" src="../assets/img/Hotels/Alma-Suites/Superior-Lago-1.jpg" alt="">
                                                    <p><%= gestion_form.roomDispoText("2","1")%></p>
                                                </section>
                                            </div>
                                            <div class="card-info-row">
                                                <section class="card-info-row__content">
                                                    <div csstype="header">
                                                        <h2>Junior Suite</h2>
                                                    </div>
                                                    <div csstype="content">
                                                        <p>Habitación Doble con Vista al Lago</p>
                                                        <div class="details-section">
                                                            <section><h2>Características de la Habitación Junior Suite</h2></section>
                                                            <hr>
                                                            <section>
                                                                <h4>Tamaño</h4>
                                                                <li>Aproximadamente 36 metros cuadrados</li>
                                                            </section>
                                                            <section>
                                                                <h4>Capacidad</h4>
                                                                <li>Hasta 4 personas</li>
                                                            </section>
                                                            <section>
                                                                <h4>Cama(s)</h4>
                                                                <li>Cama King (2 mts x 2 mts) o 2 camas twin </li>
                                                            </section>
                                                            <section>
                                                                <h4>Baño</h4>
                                                                <li>Amplio baño con box de ducha y bañera en ambientes separados.</li>
                                                            </section>
                                                            <section>
                                                                <h4>Amenidades</h4>
                                                                <li>TV por cable</li>
                                                                <li>Caja de seguridad digital</li>
                                                                <li>Conexión Wi-Fi de alta velocidad sin costo adicional</li>
                                                                <li>Climatización individual</li>
                                                                <li>Frigobar</li>
                                                                <li>Escritorio</li>
                                                                <li>Balcón con vista al lago</li>
                                                            </section>
                                                        </div>
                                                    </div>
                                                    <div csstype="footer">
                                                        <button type="submit" class="button standard">
                                                            <input type="radio" id="alma-room_3" value="3" name="book__hab-type" required>
                                                            <label for="alma-room_3">seleccionar esta habitacion</label>
                                                        </button>
                                                    </div>
                                                </section>
                                                <section csspos="center" class="card-info-row__img">
                                                    <img csstype="landscape" src="../assets/img/Hotels/Alma-Suites/Junior-Suite-1.jpg" alt="">
                                                    <p><%= gestion_form.roomDispoText("3","1")%></p>
                                                </section>
                                            </div>
                                            <div class="card-info-row">
                                                <section class="card-info-row__content">
                                                    <div csstype="header">
                                                        <h2>Deluxe Suite</h2>
                                                    </div>
                                                    <div csstype="content">
                                                        <p>Habitación Doble con Vista al Lago</p>
                                                        <div class="details-section">
                                                            <section><h2>Características de la Habitación Deluxe Suite</h2></section>
                                                            <hr>
                                                            <section>
                                                                <h4>Tamaño</h4>
                                                                <li>Aproximadamente 44 metros cuadrados</li>
                                                            </section>
                                                            <section>
                                                                <h4>Capacidad</h4>
                                                                <li>Hasta 3 personas</li>
                                                            </section>
                                                            <section>
                                                                <h4>Cama(s)</h4>
                                                                <li>Cama King size</li>
                                                            </section>
                                                            <section>
                                                                <h4>Baño</h4>
                                                                <li>Baño privado con bañera de hidromasaje</li>
                                                            </section>
                                                            <section>
                                                                <h4>Amenidades</h4>
                                                                <li>TV por cable</li>
                                                                <li>Caja de seguridad digital</li>
                                                                <li>Frigobar</li>
                                                                <li>Conexión Wi-Fi de alta velocidad sin costo adicional</p>
                                                                <li>Climatización individual</li>
                                                                <li>Escritorio</li>
                                                                <li>Vistas panoramicas del lago</li>
                                                            </section>
                                                        </div>
                                                    </div>
                                                    <div csstype="footer">
                                                        <button type="submit" class="button standard">
                                                            <input type="radio" id="alma-room_4" value="4" name="book__hab-type" required>
                                                            <label for="alma-room_4">seleccionar esta habitacion</label>
                                                        </button>
                                                    </div>
                                                </section>
                                                <section csspos="center" class="card-info-row__img">
                                                    <img csstype="landscape" src="../assets/img/Hotels/Alma-Suites/Deluxe-Suite.jpg" alt="">
                                                    <p><%= gestion_form.roomDispoText("4","1")%></p>
                                                </section>
                                            </div>
                                            <div class="card-info-row">
                                                <section class="card-info-row__content">
                                                    <div csstype="header">
                                                        <h2>Torre Suite</h2>
                                                    </div>
                                                    <div csstype="content">
                                                        <p>Habitación en 2 Plantas</p>
                                                        <div class="details-section">
                                                            <section><h2>Características de la Habitación Torre Suite</h2></section>
                                                            <hr>
                                                            <section>
                                                                <h4>Tamaño</h4>
                                                                <li>Aproximadamente 65 metros cuadrados</li>
                                                            </section>
                                                            <section>
                                                                <h4>Capacidad</h4>
                                                                <li>Hasta 4 personas</li>
                                                            </section>
                                                            <section>
                                                                <h4>Cama(s)</h4>
                                                                <li>Camas twin</li>
                                                            </section>
                                                            <section>
                                                                <h4>Baño</h4>
                                                                <li>Baño privado con bañera en la planta superior y baño en la planta inferior con hidromasaje</li>
                                                            </section>
                                                            <section>
                                                                <h4>Amenidades</h4>
                                                                <li>TV por cable</li>
                                                                <li>Caja de seguridad digital</li>
                                                                <li>Frigobar</li>
                                                                <li>Conexión Wi-Fi de alta velocidad sin costo adicional</p>
                                                                <li>Climatización individual</li>
                                                                <li>Escritorio</li>
                                                            </section>
                                                        </div>
                                                    </div>
                                                    <div csstype="footer">
                                                        <button type="submit" class="button standard">
                                                            <input type="radio" id="alma-room_5" value="5" name="book__hab-type" required>
                                                            <label for="alma-room_5">seleccionar esta habitacion</label>
                                                        </button>
                                                    </div>
                                                </section>
                                                <section csspos="center" class="card-info-row__img">
                                                    <img csstype="landscape" src="../assets/img/Hotels/Alma-Suites/Torre-Suite.jpg" alt="">
                                                    <p><%= gestion_form.roomDispoText("5","1")%></p>
                                                </section>
                                            </div>
                                            <div class="card-info-row">
                                                <section class="card-info-row__content">
                                                    <div csstype="header">
                                                        <h2>Master Suite</h2>
                                                    </div>
                                                    <div csstype="content">
                                                        <p>Elegante Suite de 3 ambientes</p>
                                                        <div class="details-section">
                                                            <section><h2>Características de la Habitación Master Suite</h2></section>
                                                            <hr>
                                                            <section>
                                                                <h4>Tamaño</h4>
                                                                <li>Aproximadamente 101 metros cuadrados</li>
                                                            </section>
                                                            <section>
                                                                <h4>Capacidad</h4>
                                                                <li>Hasta 4 personas</li>
                                                            </section>
                                                            <section>
                                                                <h4>Cama(s)</h4>
                                                                <li>Cama King size y Camas twin en ambientes separados</li>
                                                            </section>
                                                            <section>
                                                                <h4>Baño</h4>
                                                                <li>Amplio baño con box de ducha y bañera con hidromasaje en ambientes separados. </li>
                                                            </section>
                                                            <section>
                                                                <h4>Amenidades</h4>
                                                                <li>TV por cable</li>
                                                                <li>Caja de seguridad digital</li>
                                                                <li>Frigobar</li>
                                                                <li>Conexión Wi-Fi de alta velocidad sin costo adicional</p>
                                                                <li>Climatización individual</li>
                                                                <li>Escritorio</li>
                                                                <li>Amplio living/comedor con imponente vista al lago.</li>
                                                            </section>
                                                        </div>
                                                    </div>
                                                    <div csstype="footer">
                                                        <button type="submit" class="button standard">
                                                            <input type="radio" id="alma-room_6" value="6" name="book__hab-type" required>
                                                            <label for="alma-room_6">seleccionar esta habitacion</label>
                                                        </button>
                                                    </div>
                                                </section>
                                                <section csspos="center" class="card-info-row__img">
                                                    <img csstype="landscape" src="../assets/img/Hotels/Alma-Suites/Master-Suite-1.jpg" alt="">
                                                    <p><%= gestion_form.roomDispoText("6","1")%></p>
                                                </section>
                                            </div>
                                        </div>
                                    </div>
                                    <div name="casco-room" class="tabs__content-wrapper">
                                        <div class="tabs__content multi-card__wrapper">
                                            <div class="card-info-row">
                                                <section class="card-info-row__content">
                                                    <div csstype="header">
                                                        <h2>Bustillo Studio</h2>
                                                    </div>
                                                    <div csstype="content">
                                                        <div class="details-section">
                                                            <section><h2>Características de la Habitación Bustillo Studio</h2></section>
                                                            <hr>
                                                            <section>
                                                                <h4>Tamaño</h4>
                                                                <li>Aproximadamente 30 metros cuadrados</li>
                                                            </section>
                                                            <section>
                                                                <h4>Capacidad</h4>
                                                                <li>Hasta 2 personas</li>
                                                            </section>
                                                            <section>
                                                                <h4>Cama(s)</h4>
                                                                <li>Cama Queen size</li>
                                                            </section>
                                                            <section>
                                                                <h4>Baño</h4>
                                                                <li>Amplio baño con ducha y bañera</li>
                                                            </section>
                                                            <section>
                                                                <h4>Amenidades</h4>
                                                                <li>Minibar</li>
                                                                <li>Caja de seguridad digital</li>
                                                                <li>Conexión Wi-Fi de alta velocidad sin costo adicional</li>
                                                                <li>Climatización individual</li>
                                                                <li>Frigobar</li>
                                                            </section>
                                                        </div>
                                                    </div>
                                                    <div csstype="footer">
                                                        <button type="submit" class="button standard">
                                                            <input type="radio" id="casco-room_1" value="1" name="book__hab-type" required>
                                                            <label for="casco-room_1">seleccionar esta habitacion</label>
                                                        </button>
                                                    </div>
                                                </section>
                                                <section csspos="center" class="card-info-row__img">
                                                    <img csstype="landscape" src="../assets/img/Hotels/Casco-Art/Bustillo-Estandar-Estudio.jpg" alt="">
                                                    <p><%= gestion_form.roomDispoText("1","2")%></p>
                                                </section>
                                            </div>
                                            <div class="card-info-row">
                                                <section class="card-info-row__content">
                                                    <div csstype="header">
                                                        <h2>Nahuel Studio</h2>
                                                    </div>
                                                    <div csstype="content">
                                                        <div class="details-section">
                                                            <section><h2>Características de la Habitación Nahuel Studio</h2></section>
                                                            <hr>
                                                            <section>
                                                                <h4>Tamaño</h4>
                                                                <li>Aproximadamente 45 metros cuadrados</li>
                                                            </section>
                                                            <section>
                                                                <h4>Capacidad</h4>
                                                                <li>Hasta 2 personas</li>
                                                            </section>
                                                            <section>
                                                                <h4>Cama(s)</h4>
                                                                <li>Cama King size o Cama twin</li>
                                                            </section>
                                                            <section>
                                                                <h4>Baño</h4>
                                                                <li>Amplio baño con ducha y bañera</li>
                                                            </section>
                                                            <section>
                                                                <h4>Amenidades</h4>
                                                                <li>Minibar</li>
                                                                <li>Caja de seguridad digital</li>
                                                                <li>Conexión Wi-Fi de alta velocidad sin costo adicional</li>
                                                                <li>Climatización individual</li>
                                                                <li>Frigobar</li>
                                                                <li>Vistas panoramicas del lago</li>
                                                                <li>Zona de estar</li>
                                                            </section>
                                                        </div>
                                                    </div>
                                                    <div csstype="footer">
                                                        <button type="submit" class="button standard">
                                                            <input type="radio" id="casco-room_2" value="2" name="book__hab-type" required>
                                                            <label for="casco-room_2">seleccionar esta habitacion</label>
                                                        </button>
                                                    </div>
                                                </section>
                                                <section csspos="center" class="card-info-row__img">
                                                    <img csstype="landscape" src="../assets/img/Hotels/Casco-Art/Nahuel-Estudio.jpg" alt="">
                                                    <p><%= gestion_form.roomDispoText("2","2")%></p>
                                                </section>
                                            </div>
                                        </div>
                                    </div>
                                    <div name="charming-room" class="tabs__content-wrapper">
                                        <div class="tabs__content multi-card__wrapper">
                                            <div class="card-info-row">
                                                <section class="card-info-row__content">
                                                    <div csstype="header">
                                                        <h2>Suite clasica</h2>
                                                    </div>
                                                    <div csstype="content">
                                                        <p>Habitación con jacuzzi, vista al jardín y parcialmente al lago desde la terraza.</p>
                                                        <div class="details-section">
                                                            <section><h2>Características de la Habitación Suite clasica</h2></section>
                                                            <hr>
                                                            <section>
                                                                <h4>Tamaño</h4>
                                                                <li>Aproximadamente 30 metros cuadrados</li>
                                                            </section>
                                                            <section>
                                                                <h4>Capacidad</h4>
                                                                <li>Hasta 2 personas</li>
                                                            </section>
                                                            <section>
                                                                <h4>Cama(s)</h4>
                                                                <li>Cama King size o Camas twin</li>
                                                            </section>
                                                            <section>
                                                                <h4>Baño</h4>
                                                                <li>Baño con Jacuzzi/hidromasaje individual</li>
                                                            </section>
                                                            <section>
                                                                <h4>Amenidades</h4>
                                                                <li>TV por cable</li>
                                                                <li>Caja de seguridad digital</li>
                                                                <li>Conexión Wi-Fi de alta velocidad sin costo adicional</li>
                                                                <li>Climatización individual</li>
                                                                <li>Microondas, cafetera y pava electrica</li>
                                                                <li>Terraza con vista al jardín y montaña, vista parcial al lago</li>
                                                            </section>
                                                        </div>
                                                    </div>
                                                    <div csstype="footer">
                                                        <button type="submit" class="button standard">
                                                            <input type="radio" id="charming-room_1" value="1" name="book__hab-type" required>
                                                            <label for="charming-room_1">seleccionar esta habitacion</label>
                                                        </button>
                                                    </div>
                                                </section>
                                                <section csspos="center" class="card-info-row__img">
                                                    <img csstype="landscape" src="../assets/img/Hotels/Charming-Luxury/Suite-Clasica.jpg" alt="">
                                                    <p><%= gestion_form.roomDispoText("1","3")%></p>
                                                </section>
                                            </div>
                                        </div>
                                    </div>
                                    <div name="peuma-room" class="tabs__content-wrapper">
                                        <div class="tabs__content multi-card__wrapper">
                                            <div class="card-info-row">
                                                <section class="card-info-row__content">
                                                    <div csstype="header">
                                                        <h2>Casa del Coihue</h2>
                                                    </div>
                                                    <div csstype="content">
                                                        <p>Cabaña ubicada alrededor de la Casa de los álamos, en frente de una huerta orgánica</p>
                                                        <div class="details-section">
                                                            <section><h2>Características de la Cabaña Casa del Coihue</h2></section>
                                                            <hr>
                                                            <section>
                                                                <h4>Tamaño</h4>
                                                                <li>Aproximadamente 25 metros cuadrados</li>
                                                            </section>
                                                            <section>
                                                                <h4>Capacidad</h4>
                                                                <li>Hasta 2 personas</li>
                                                            </section>
                                                            <section>
                                                                <h4>Cama(s)</h4>
                                                                <li>2 Camas King size</li>
                                                            </section>
                                                            <section>
                                                                <h4>Baño</h4>
                                                                <li>2 Baños privados</li>
                                                            </section>
                                                            <section>
                                                                <h4>Amenidades</h4>
                                                                <li>TV por cable</li>
                                                                <li>Caja de seguridad digital</li>
                                                                <li>Conexión Wi-Fi de alta velocidad sin costo adicional</li>
                                                                <li>Climatización individual</li>
                                                                <li>Frigobar</li>
                                                                <li>Entorno completamente natural</li>
                                                                <li>Habitaciones con vista al lago</li>
                                                            </section>
                                                        </div>
                                                    </div>
                                                    <div csstype="footer">
                                                        <button type="submit" class="button standard">
                                                            <input type="radio" id="peuma-room_1" value="1" name="book__hab-type" required>
                                                            <label for="peuma-room_1">seleccionar esta habitacion</label>
                                                        </button>
                                                    </div>
                                                </section>
                                                <section csspos="center" class="card-info-row__img">
                                                    <img csstype="landscape" src="../assets/img/Hotels/Peuma-Hue/Casa-del-Coihue.jpg" alt="">
                                                    <p><%= gestion_form.roomDispoText("1","4")%></p>
                                                </section>
                                            </div>
                                        </div>
                                    </div>
                                    <div name="llao-room" class="tabs__content-wrapper">
                                        <div class="tabs__content multi-card__wrapper">
                                            <div class="card-info-row">
                                                <section class="card-info-row__content">
                                                    <div csstype="header">
                                                        <h2>Lago Superior</h2>
                                                    </div>
                                                    <div csstype="content">
                                                        <p>Habitación en el Edificio Bustillo con vista al lago Nahuel Huapi o al Lago Moreno</p>
                                                        <div class="details-section">
                                                            <section><h2>Características de la Habitación Classic Lago</h2></section>
                                                            <hr>
                                                            <section>
                                                                <h4>Tamaño</h4>
                                                                <li>Aproximadamente 23 metros cuadrados</li>
                                                            </section>
                                                            <section>
                                                                <h4>Capacidad</h4>
                                                                <li>Hasta 2 personas</li>
                                                            </section>
                                                            <section>
                                                                <h4>Cama(s)</h4>
                                                                <li>Cama King size o Camas twin</li>
                                                            </section>
                                                            <section>
                                                                <h4>Baño</h4>
                                                                <li>Baño con ducha y bañera</li>
                                                            </section>
                                                            <section>
                                                                <h4>Amenidades</h4>
                                                                <li>TV por cable</li>
                                                                <li>Caja de seguridad digital</li>
                                                                <li>Conexión Wi-Fi de alta velocidad sin costo adicional</li>
                                                                <li>Escritorio</li>
                                                                <li>Minibar</li>
                                                            </section>
                                                        </div>
                                                    </div>
                                                    <div csstype="footer">
                                                        <button type="submit" class="button standard">
                                                            <input type="radio" id="llao-room_1" value="1" name="book__hab-type" required>
                                                            <label for="llao-room_1">seleccionar esta habitacion</label>
                                                        </button>
                                                    </div>
                                                </section>
                                                <section csspos="center" class="card-info-row__img">
                                                    <img csstype="landscape" src="../assets/img/Hotels/Llao-Llao/Lago-Superior.jpg" alt="">
                                                    <p><%= gestion_form.roomDispoText("1","5")%></p>
                                                </section>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </form>
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
        <script aria-description="form-tabber">
            window.onload = function () {
                document.getElementById('tab-1').checked = true;
            };
        </script>
        <script aria-description="tab-dispatcher">
            var tabIndex = 1;
            tabHandler(tabIndex);

            function currentTabContent(n) {tabHandler(tabIndex = n);}

            function tabHandler(n) {
                let i;
                let tabContent = document.getElementsByClassName("tabs__content-wrapper");
                if (n > tabContent.length) {tabIndex = 1}
                if (n < 1) {tabIndex = tabContent.length}
                for (i = 0; i < tabContent.length; i++) {tabContent[i].classList.remove('is-current');}
                tabContent[tabIndex-1].classList.add('is-current');
            }
        </script>
    </body>
</html>