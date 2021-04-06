<%-- 
    Document   : Orphanage
    Created on : 04/01/2021, 00:35:37
    Author     : Jamilly
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
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
                    <img src="images/teste.png" alt="teste" id="selectedImage"/>

                    <div class="images">
                        <button class="active" 
                                id="images/teste.png" 
                                onclick = "setSelectedImage('images/teste.png')">  
                            <img src="images/teste.png" alt=""/>
                        </button>
                        <button class="" 
                                id="images/teste2.jpeg" 
                                onclick = "setSelectedImage('images/teste2.jpeg')">  
                            <img src="images/teste2.jpeg" alt=""/>
                        </button>
                        
                    </div>

                    <div class="orphanage-details-content">
                        <h1>Nome do orfanato</h1>
                        <p>
                            sobre o orfanato
                        </p>

                        <div class="map-container">
                         
                            <img src="https://api.mapbox.com/styles/v1/mapbox/streets-v11/static/-53.027,-24.1865,13.25,0/537x280?access_token=pk.eyJ1IjoiYWx0LWphbXMiLCJhIjoiY2tqeW1hZzF1MGV5dDJwcDRjcm4zMWpraiJ9.JQYR_VJ00YqNBVx37LHZ1g" alt="map"/>

                            <footer>
                                <a target= "_blank" rel="noopener noreferrer" href={`https://www.google.com/maps/dir/?api=1&destination=${orphanage.latitude},${orphanage.longitude}`}>Ver rotas no Google Maps</a>
                            </footer>
                        </div>

                        <hr />

                        <h2>Instruções para visita</h2>
                        <p>
                            Instruções do orfanato
                        </p>

                        <div class="open-details">
                            <div class="hour">
                                <i class="far fa-clock"></i><br>
                                Segunda à Sexta <br />
                                < horas de abertura >
                            </div>
                            
                            <div class="open-on-weekends">
                                <i class="fas fa-exclamation-circle"></i><br>
                                Atendemos <br />
                                fim de semana
                            </div>

                        </div>

                        <a target="_blank"  href = "http://api.whatsapp.com/send?1=pt_BR&phone=${orphanage.phone_number}">
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
