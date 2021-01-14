<%-- 
    Document   : WaitingRegistration
    Created on : 31/12/2020, 18:23:21
    Author     : Jamilly
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" type="text/css" href="styles/global.css">
        <link rel="stylesheet" type="text/css" href="styles/dashboard.css">
        <link rel="stylesheet" type="text/css" href="styles/waitingRegistration.css">

        
        <script src="https://kit.fontawesome.com/a076d05399.js"></script>
        <title>JSP Page</title>
    </head>
    <body>
        <div id = "dashboard-page">
            <aside class = "sidebar">
                <img src="images/map-marker.svg" alt="Happy" />

                <div class="menu">
                    <button type="button" onclick="window.location.href='Dashboard'" class="orphanages">
                        <i class="fas fa-map-marker-alt"></i>
                    </button>
                    <button type="button" class="waiting">
                        <i class="fas fa-exclamation-circle"></i>
                    </button>
                </div>

                <footer>
                    <button type="button" onclick="window.location.href='Landing'" >
                        <i class="fas fa-power-off"></i>
                    </button>
                </footer>
            </aside>

            <main>
                <div class="top">
                    <h1>Cadastros Pendentes</h1>
                    <p>x Orfanatos</p>
                </div>

                <div class="listing">

                    <div class="orphanage-block">
                        <div class="map">mapa</div>

                        <div class="orphanage-info">
                            <p>Orphanage name</p>
                                <button type="button" onclick="window.location.href='Acceptance'" class="edit-button1">
                                   <i class="fas fa-arrow-right"></i>
                                </button>
                        </div>
                    </div>                 
                </div>
            </main>
        </div>
    </body>
</html>
