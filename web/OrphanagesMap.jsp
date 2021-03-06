<%-- 
    Document   : OrphanagesMap
    Created on : 12/12/2020, 12:54:52
    Author     : Jamilly
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" type="text/css" href="styles/global.css">
        <link rel="stylesheet" type="text/css" href="styles/orphanagesMap.css">
        <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.15.1/css/all.css">
        
        <title>Orfanatos</title>
        
    </head>
   
    <body>
        
        <div id="page-map">
            <aside>
                <header>
                    <img src="images/logo.svg" alt="Happy"/>
                    <h2>Escolha um orfanato no mapa</h2>
                    <p>Muitas crianças estão esperando a sua visita :)</p>                    
                </header>

                <footer>
                    <strong>Goioerê</strong>
                    <span>Paraná</span>
                </footer>
                
                <a href="Landing">
                    <div class="back-button">
                        <i class="fas fa-arrow-left"></i>
                    </div>
                </a>
            </aside>
            
            <div>
                <div id="map" style="height:100vh; width:960px"></div>
                <a href = "NewOrphanage" class="create-orphanage">
                    <i class="fas fa-plus"></i>
                </a> 
            </div>

        </div>
        
        <script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyClxNvUXtdVAFYsc2MX2CoZI4GyXx85-lg"></script>
        
        <script>
            
            var map;
            
            function initialize() {
                var mapOptions = {
                    zoom: 15,
                    center: new google.maps.LatLng(-24.1868833,-53.0230323),
                    disableDefaultUI: true,
                    zoomControl: true,
                    zoomControlOptions : {
                        position: google.maps.ControlPosition.RIGHT_TOP,
                    },
                };
                
                map = new google.maps.Map(document.getElementById('map'),
                        mapOptions);
                        
                 var icon = {
                    url: "images/map-marker.svg",
                    scaledSize : new google.maps.Size(60, 60)
                };
                
        // {orphanages.map(orphanage =>   
                <c:forEach var="orphanage" items="${orphanages}">
                    const contentString${orphanage.id} = '<div class = "map-popup">' +
                                                "<p>${orphanage.name}</p>" +
                                                '<a href="Orphanage?id=${orphanage.id}">' +
                                                    '<i class="fas fa-arrow-right"></i>' +
                                                "</a>" +
                                          "</div>";
                    const infowindow${orphanage.id} = new google.maps.InfoWindow({
                        content: contentString${orphanage.id},
                    });
                    
                    const marker${orphanage.id} = new google.maps.Marker({
                        position: { lat: ${orphanage.latitude}, lng: ${orphanage.longitude}},
                        map,
                        title: "Hello World!",
                        icon: icon
                    });
                    marker${orphanage.id}.addListener("click", () => {
                        infowindow${orphanage.id}.open(map, marker${orphanage.id});
                    });
                
                </c:forEach>
            }

            google.maps.event.addDomListener(window, 'load', initialize);
        </script>
        
    </body>
</html>
