<%-- 
    Document   : Login
    Created on : 25/11/2020, 19:22:51
    Author     : Jamilly
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" type="text/css" href="styles/global.css">
        <link rel="stylesheet" type="text/css" href="styles/login.css">
        <script src="https://kit.fontawesome.com/a076d05399.js"></script>

        <title>Login</title>

    </head>
    
    <body>
        <div class="happy">
            <img src="images/Logotipo.svg" alt="logo" class = "logo">
            <div class="location">
                 <strong>Goioerê</strong>
                    <span>Paraná</span>
            </div>
        </div>
        
        <div class="login-space">
            
            <button class="arrow-left" onclick="window.location.href='Landing'">
                <i class="fas fa-arrow-left" ></i>
            </button>
            
            <form action="Login" method="post" class="login-form">  
                
                <fieldset>
                    <legend>Fazer Login</legend>
                    <div class="input-block">
                        <label for="user">Usuário</label>
                        <input id="user" type="text"/>
                    </div>

                    <div class="input-block">
                        <label for="password">senha</label>
                        <input id="password" type="password"/>
                    </div>
                </fieldset>

                <button class="enter-button" type="submit">
                    Entrar
                </button>

            </form>
        </div>
    </body>
</html>