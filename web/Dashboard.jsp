<%-- 
    Document   : Dashboard
    Created on : 30/12/2020, 18:26:44
    Author     : Jamilly
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" type="text/css" href="styles/global.css">
        <link rel="stylesheet" type="text/css" href="styles/dashboard.css">
        <link rel="stylesheet" type="text/css" href="styles/registeredOrphanages.css">

        <script src="https://kit.fontawesome.com/a076d05399.js"></script>
        
        <title>JSP Page</title>
    </head>
    <body>
        <div id = "dashboard-page">
            <aside class = "sidebar">
                <img src="images/map-marker.svg" alt="Happy" />

                <div class="menu">
                    <button type="button" class="orphanages">
                        <i class="fas fa-map-marker-alt"></i>
                    </button>
                    <button type="button" onclick="window.location.href='WaitingRegistration'" class="waiting">
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
                    <h1>Orfanatos Cadastrados</h1>
                    <p>x Orfanatos</p>
                </div>

                <div class="listing">

                    <div class="orphanage-block">
                        <div class="map">mapa</div>

                        <div class="orphanage-info">
                            <p>Orphanage name</p>
                            <div>
                                <button type="button" onclick="window.location.href='NewOrphanage'" class="edit-button1">
                                    <i class="far fa-edit"></i>
                                </button>

                                <button type="button" onclick="window.location.href='DeleteOrphanage'" class="edit-button2">
                                    <i class="far fa-trash-alt"></i>
                                </button>
                            </div>
                        </div>
                    </div> 

                    <div class="orphanage-block">
                        <div class="map">
                            <img src="https://maps.googleapis.com/maps/api/staticmap?center=40.714%2c%20-73.998&zoom=12&size=400x400&key=AIzaSyBRcnBj9i5HnUFdiTgaaF8kq6Iz_GNNaXY" alt="mapa" />
                        </div>

                        <div class="orphanage-info">
                            <p>Orphanage name</p>
                            <div>
                                <button type="button" onclick="window.location.href='NewOrphanage'" class="edit-button1" >
                                    <i class="far fa-edit"></i>
                                </button>

                                <button type="button" onclick="window.location.href='DeleteOrphanage'" class="edit-button2">
                                    <i class="far fa-trash-alt"></i>
                                </button>
                            </div>

                        </div>

                    </div> 

                </div>
            </main>
        </div>
    </body>
    
</html>
