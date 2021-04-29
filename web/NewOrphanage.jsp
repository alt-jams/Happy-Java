<%-- 
    Document   : NewOrphanage
    Created on : 13/12/2020, 13:58:52
    Author     : Jamilly
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" type="text/css" href="styles/global.css">
        <link rel="stylesheet" type="text/css" href="styles/newOrphanage.css">
        <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.15.1/css/all.css">
        
        <script language="JavaScript" src="scripts/biblio.js"></script>
        
        <script src="http://code.jquery.com/jquery-1.11.1.js"></script>
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.1/jquery.min.js"></script>
        <script src="http://jqueryvalidation.org/files/dist/jquery.validate.js"></script>
        
        <title>Criar Orfanato</title>
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
                
                <form action="NewOrphanage" method="post" class="create-orphanage-form" enctype="multipart/form-data" id="orphanage-form">
                    <div class="center">
                    <fieldset>
                        <legend>Dados</legend>
                        <input type="hidden" id="latitude" name="latitude" value="" />
                        <input type="hidden" id="longitude" name="longitude" value="" />
                        <div class="map-info">    
                            <div id="map" style="height:280px; width:100%"></div>
                            <p class="map-instruction">Clique no mapa para adicionar a localização</p>
                        </div>
                           
                        
                        <div class="input-block">
                            <label>Nome</label>
                            <input name="name" id="name" type="text" value=""/>
                        </div>

                        <div class="input-block">
                            <label>Número de Whatsapp</label>
                            <input name="phone_number" type="text" value=""/>
                        </div>

                        <div class="input-block">
                            <label>Sobre <span>Máximo de 300 caracteres</span></label>
                            <textarea name="about" maxlength="300" value=""></textarea> 
                        </div>

                        <div class="input-block">
                            <label>Fotos</label> 
                            <div class="images-container">                        
                                <label class="new-image">
                                    <i class="fas fa-plus"></i>
                                    <input multiple name="image" id="file-input" type="file" accept="image/*"/>    
                                </label>
                                <div class="preview"></div> 
                            </div>  
                        </div>
                    </fieldset>

                    <fieldset>
                        <legend>Visitação</legend>

                        <div class="input-block">
                            <label>Instruções</label>
                            <textarea name="instructions" value=""></textarea>
                        </div>

                        <div class="input-block">
                            <label>Horário de funcionamento</label>
                            <input name="opening_hours" value=""/>
                        </div>

                        <div class="input-block">
                            <label>Atende fim de semana</label>

                            <div class="button-select">
                                <button onclick="setOpenTrue()" type="button" class="" id="open">Sim</button>
                                <button onclick="setOpenFalse()" type="button" class="" id="dont-open">Não</button>
                            </div>
                            <input type="hidden" id="open_on_weekends" name="open_on_weekends" value="" />
                        </div>
                    </fieldset>

                    <button class="confirm-button" type="submit">
                        Confirmar
                    </button>
                    </div>
                </form>
                
            </main>
        </div>
        
        <script>
            imagesPreview();

        </script>
        
        <script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyClxNvUXtdVAFYsc2MX2CoZI4GyXx85-lg"></script>
        
        <script>
            
            var map;
            var marker;
            var icon = {
                    url: "images/map-marker.svg",
                    scaledSize : new google.maps.Size(60, 60)
                };
                
            var icon2 = {
                url: "images/removeIcon.svg",
                scaledSize : new google.maps.Size(60, 60)
            }    
            
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
                    
                google.maps.event.addListener(map, 'click', function(event) {
                    placeMarker(event.latLng);
                }); 
                
            }

            google.maps.event.addDomListener(window, 'load', initialize);
        </script>
        
        <script>
            validateOrphanageForm();
        </script>
    </body>
</html>
