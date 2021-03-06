<%-- 
    Document   : WaitingRegistration
    Created on : 31/12/2020, 18:23:21
    Author     : Jamilly
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" type="text/css" href="styles/global.css">
        <link rel="stylesheet" type="text/css" href="styles/dashboard.css">
        <link rel="stylesheet" type="text/css" href="styles/waitingRegistration.css">
        <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.15.1/css/all.css">
        
        <title>Esperando Registro</title>
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
                    <button type="button" onclick="window.location.href='Logout'" >
                        <i class="fas fa-power-off"></i>
                    </button>
                </footer>
            </aside>

            <main>
                <div class="top">
                    <h1>Cadastros Pendentes</h1>
                    <p>${orphanages.size()} Orfanatos</p>
                </div>
                
                    <c:if test="${orphanages.size() == 0}">
                        <div class="no-orphanages">
                            <img src="images/none.svg" alt="Happy" />
                        </div>
                    </c:if>

                <div class="listing">
                    <c:forEach var="orphanage" items="${orphanages}">
                        <div class="orphanage-block">
                            <div class="map">
                                <img src='https://api.mapbox.com/styles/v1/mapbox/streets-v11/static/pin-s+D3320F(${orphanage.longitude},${orphanage.latitude})/${orphanage.longitude},${orphanage.latitude},13.25,0/439x185?access_token=pk.eyJ1IjoiYWx0LWphbXMiLCJhIjoiY2tqeW1hZzF1MGV5dDJwcDRjcm4zMWpraiJ9.JQYR_VJ00YqNBVx37LHZ1g' alt="map"/>
                            </div>

                            <div class="orphanage-info">
                                <p>${orphanage.name}</p>
                                    <button type="button" onclick="window.location.href='Acceptance?id=${orphanage.id}'" class="edit-button1">
                                       <i class="fas fa-arrow-right"></i>
                                    </button>
                            </div>
                        </div>
                    </c:forEach>
                </div>
            </main>
        </div>
    </body>
</html>
