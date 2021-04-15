<%-- 
    Document   : EditOrphanage
    Created on : 15/04/2021, 19:15:14
    Author     : Jamilly
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" type="text/css" href="styles/global.css">
        <link rel="stylesheet" type="text/css" href="styles/newOrphanage.css">
        <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.15.1/css/all.css">
        
        <script language="JavaScript" src="scripts/biblio.js"></script>
        
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.1/jquery.min.js"></script>
        
        <title>Editar Orfanato</title>
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
                <form action="EditOrphanage" method="post" class="create-orphanage-form">
                    <fieldset>
                        <legend>Editar dados</legend>
                        <div class="map-info">    
                            <div id="map" style="height:280px; width:100%"></div>
                            <p class="map-instruction">Clique no mapa para adicionar a localização</p>
                        </div>
                            <input type="hidden" id="latitude" name="latitude" value="" />
                            <input type="hidden" id="longitude" name="longitude" value="" />
                        <div class="input-block">
                            <label>Nome</label>
                            <input name="name" type="text" value="${orphanage.name}"/>
                        </div>

                        <div class="input-block">
                            <label>Número de Whatsapp</label>
                            <input name="phone_number" type="text" value="${orphanage.phoneNumber}"/>
                        </div>

                        <div class="input-block">
                            <label>Sobre <span>Máximo de 300 caracteres</span></label>
                            <textarea name="about" maxlength="300" value="">${orphanage.about}</textarea> 
                        </div>

                        <div class="input-block">
                            <label>Fotos</label> 
                            <div class="images-container">                        
                                <c:forEach var="image" items="${images}">
                                    <img src="ShowImages?id=${image.id}" alt="image" />
                                </c:forEach>
                            </div>  
                        </div>
                    </fieldset>

                    <fieldset>
                        <legend>Visitação</legend>

                        <div class="input-block">
                            <label>Instruções</label>
                            <textarea name="instructions" value="">${orphanage.instructions}</textarea>
                        </div>

                        <div class="input-block">
                            <label>Horário de funcionamento</label>
                            <input name="opening_hours" value="${orphanage.openingHours}"/>
                        </div>

                        <div class="input-block">
                            <label>Atende fim de semana</label>

                            
                            <div class="button-select">
                                <button onclick="setOpenTrue()" type="button" class="" id="open">Sim</button>
                                <button onclick="setOpenFalse()" type="button" class="active" id="dont-open">Não</button>
                            </div>
                            
                            <input type="hidden" id="open_on_weekends" name="open_on_weekends" value="no" />
                        </div>
                        
                        <c:if test="${orphanage.openOnWeekends == true}">
                            <script>
                                setOpenTrue()
                            </script>
                        </c:if>
                    </fieldset>

                    <button class="confirm-button" type="submit" name="id" value="${orphanage.id}">
                        Editar
                    </button>
                </form>
            </main>
        </div>

        
        <script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyClxNvUXtdVAFYsc2MX2CoZI4GyXx85-lg"></script>
        
        <script>
            
            var map;
            var marker;
            var icon = {
                    url: "images/map-marker.svg",
                    scaledSize : new google.maps.Size(60, 60)
                };
            
            function initialize() {
                var mapOptions = {
                    zoom: 15,
                    center: new google.maps.LatLng(${orphanage.latitude},${orphanage.longitude}),
                    disableDefaultUI: true,
                    zoomControl: true,
                    zoomControlOptions : {
                        position: google.maps.ControlPosition.RIGHT_TOP,
                    },
                };
                
                map = new google.maps.Map(document.getElementById('map'),
                    mapOptions);
                    
                google.maps.event.addListener(map, 'click', function(event) {
                    placeMarker(event.latLng);
                });  
                
                marker = new google.maps.Marker({
                        position: {lat: ${orphanage.latitude}, lng: ${orphanage.longitude}},
                        map: map,
                        icon: icon
                });
            }
            
            function placeMarker(location) {
                if (marker == null) {
                    marker = new google.maps.Marker({
                        position: location,
                        map: map,
                        icon: icon
                    });
                    
                    document.getElementById("latitude").value = location.lat();
                    document.getElementById("longitude").value = location.lng();
                    
                    marker.addListener('click', function(){
                        this.setMap(null);
                        marker = null;

                    })
                }
                else {
                    marker.setMap(null);
                    marker = null;
                    placeMarker(location);
                }

          }

            google.maps.event.addDomListener(window, 'load', initialize);
        </script>
    </body>
</html>
