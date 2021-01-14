<%-- 
    Document   : Acceptance
    Created on : 11/01/2021, 16:27:02
    Author     : Jamilly
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" type="text/css" href="styles/global.css">
        <link rel="stylesheet" type="text/css" href="styles/newOrphanage.css">
        <link rel="stylesheet" type="text/css" href="styles/acceptance.css">

        
        <script src="https://kit.fontawesome.com/a076d05399.js"></script>
        <script language="JavaScript" src="scripts/biblio.js"></script>
        
        <title>Criar Orfanato</title>
    </head>
    <body>
        <div id="new-page">
            <aside class = "sidebar">
                <img src="images/map-marker.svg" alt="Happy" />
                <footer>
                    <button type="button" onclick="window.location.href='WaitingRegistration'" >
                        <i class="fas fa-arrow-left"></i>
                    </button>
                </footer>
            </aside>
            
            <main>
                <form action="Acceptance" method="post" class="create-orphanage-form">
                    <fieldset>
                        <legend>Dados</legend>

                        <div id="map" style="height:280px; width:100%"></div>

                        <div class="input-block">
                            <label>Nome</label>
                            <input name="name" type="text" value="Orphanage name" disabled/>
                        </div>

                        <div class="input-block">
                            <label>Número de Whatsapp</label>
                            <input name="phone-number" type="text" value="Phone number" disabled/>
                        </div>

                        <div class="input-block">
                            <label>Sobre <span>Máximo de 300 caracteres</span></label>
                            <textarea name="about" maxlength="300" value="" disabled>About</textarea> 
                        </div>

                        <div class="input-block">
                            <label>Fotos</label> 
                            <div class="images-container">                        
                                <label class="new-image">
                                    <i class="fas fa-plus"></i>
                                    <input multiple name="image" id="file-input" type="file" />    
                                </label>
                                <div id="preview"></div>
                                
                            </div>

                            
                        </div>
                    </fieldset>

                    <fieldset>
                        <legend>Visitação</legend>

                        <div class="input-block">
                            <label>Instruções</label>
                            <textarea name="instructions" value="" disabled>instructions</textarea>
                        </div>

                        <div class="input-block">
                            <label>Horário de funcionamento</label>
                            <input name="opening_hours" value="Opening hours" disabled/>
                        </div>

                        <div class="input-block">
                            <label>Atende fim de semana</label>

                            <div class="button-select">
                                <button onclick="setOpenTrue()" type="button" class="" id="open">Sim</button>
                                <button onclick="setOpenFalse()" type="button" class="" id="dont-open">Não</button>
                            </div>
                        </div>
                    </fieldset>
                    
                    <div class="buttons-content">
                        <button class="deny" type="submit">
                            <i class="far fa-times-circle"></i> &#32; Recusar
                        </button>
                        <button class="allow" type="submit">
                            <i class="far fa-check-circle"></i> &#32; Aceitar
                        </button>
                    </div>
                </form>
                <div style="height: 70px;"></div>
            </main>
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
                
                new google.maps.Marker({
                    position: { lat: -24.1868833, lng: -53.0230323},
                    map,
                    title: "Hello World!",
                    icon: icon
                    
                });

            }

            google.maps.event.addDomListener(window, 'load', initialize);
        </script>
    </body>
</html>