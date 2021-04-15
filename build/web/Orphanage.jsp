<%-- 
    Document   : Orphanage
    Created on : 04/01/2021, 00:35:37
    Author     : Jamilly
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" type="text/css" href="styles/global.css">
        <link rel="stylesheet" type="text/css" href="styles/newOrphanage.css">
        <link rel="stylesheet" type="text/css" href="styles/orphanage.css">
        <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.15.1/css/all.css">
        
        <script language="JavaScript" src="scripts/biblio.js"></script>
        
        <title>Orfanato</title>
    </head>
    <body>
        <div id="new-page">
            <aside class = "sidebar">
                <img src="images/map-marker.svg" alt="Happy" />
                <footer>
                    <button type="button" onclick="window.location.href='OrphanagesMap'" >
                        <i class="fas fa-arrow-left"></i>
                    </button>
                </footer>
            </aside>

            <main>
                <div class="orphanage-details">
                    <img src="ShowImages?id=${images[0].id}" alt="teste" id="selectedImage"/>

                    <div class="images">
                        <c:forEach var="image" items="${images}">
                            <c:choose>
                                <c:when test = "${image.id == images[0].id}">
                                    <button class="active" 
                                        id="ShowImages?id=${image.id}" 
                                        onclick = "setSelectedImage('ShowImages?id=${image.id}')">  
                                            <img src="ShowImages?id=${image.id}" alt=""/>
                                    </button>
                                </c:when>
                                <c:otherwise>
                                    <button class="" 
                                        id="ShowImages?id=${image.id}" 
                                        onclick = "setSelectedImage('ShowImages?id=${image.id}')">  
                                            <img src="ShowImages?id=${image.id}" alt=""/>
                                    </button>
                                </c:otherwise>        
                            </c:choose>   
                        </c:forEach>

                    </div>

                    <div class="orphanage-details-content">
                        <h1>${orphanage.name}</h1>
                        <p>
                            ${orphanage.about}
                        </p>

                        <div class="map-container">
                         
                            <img src='https://api.mapbox.com/styles/v1/mapbox/streets-v11/static/pin-s+D3320F(${orphanage.longitude},${orphanage.latitude})/${orphanage.longitude},${orphanage.latitude},13.25,0/537x280?access_token=pk.eyJ1IjoiYWx0LWphbXMiLCJhIjoiY2tqeW1hZzF1MGV5dDJwcDRjcm4zMWpraiJ9.JQYR_VJ00YqNBVx37LHZ1g' alt="map"/>

                            <footer>
                                <a target= "_blank" rel="noopener noreferrer" href='https://www.google.com/maps/dir/?api=1&destination=${orphanage.latitude},${orphanage.longitude}'>Ver rotas no Google Maps</a>
                            </footer>
                        </div>

                        <hr />

                        <h2>Instruções para visita</h2>
                        <p>
                            ${orphanage.instructions}
                        </p>

                        <div class="open-details">
                            <div class="hour">
                                <i class="far fa-clock"></i><br>
                                Segunda à Sexta <br />
                                ${orphanage.openingHours}
                            </div>
                            
                                <c:choose>
                                    <c:when test="${orphanage.openOnWeekends == true}">
                                        <div class="open-on-weekends">
                                            <i class="fas fa-exclamation-circle"></i><br>
                                            Atendemos <br />
                                            fim de semana
                                        </div>
                                    </c:when>
                                    <c:otherwise>
                                        <div class="dont-open">
                                            <i class="fas fa-exclamation-circle"></i><br>
                                            Não atendemos <br />
                                            fim de semana
                                        </div>
                                    </c:otherwise>                
                                </c:choose>
                           
                        </div>

                        <a target="_blank"  href = 'http://api.whatsapp.com/send?1=pt_BR&phone=${orphanage.phoneNumber}'>
                            <button type="button" class="contact-button" >
                                <i class="fab fa-whatsapp"></i>
                                Entrar em contato
                            </button>
                        </a>

                    </div>
                </div>
            </main>
        </div>
    </body>
</html>
