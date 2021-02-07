<%-- 
    Document   : Landing
    Created on : 25/11/2020, 23:44:19
    Author     : Jamilly
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" type="text/css" href="styles/global.css">
        <link rel="stylesheet" type="text/css" href="styles/landing.css">
        <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.15.1/css/all.css">

        <title>Happy</title>

    </head>
    <body>
        <div id = "page-landing">
            <div class="content-wrapper">
                <img src="images/logo.svg" alt="logo"/>

                <main>
                    <h1>Leve felicidade para o mundo</h1>
                    <p>Visite orfanatos e mude o dia de muitas crianças</p>
                </main>

                <div class="location">
                    <strong>Goioerê</strong>
                    <span>Paraná</span>
                </div>

                <button type="button" onClick ="window.location.href='Login'" class="login-button">
                    Acesso restrito
                </button>

                <a href="OrphanagesMap">
                    <div class="enter-app">
                        <i class="fas fa-arrow-right"></i>
                    </div>
                </a>

            </div>
        </div>
    </body>
</html>