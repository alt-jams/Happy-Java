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
        <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.15.1/css/all.css">
        
        <script src="http://code.jquery.com/jquery-1.11.1.js"></script>
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.1/jquery.min.js"></script>
        <script src="http://jqueryvalidation.org/files/dist/jquery.validate.js"></script>
            
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
            
            <form action="Login" method="post" class="login-form" id="login-form">  
                
                <fieldset>
                    <legend>Fazer Login</legend>
                    <div class="input-block">
                        <label for="user">Usuário</label>
                        <input id="user" name="user" type="text"/>
                    </div>

                    <div class="input-block">
                        <label for="password">senha</label>
                        <input id="password" name="password" type="password"/>
                    </div>
                </fieldset>

                <button class="enter-button" type="submit">
                    Entrar
                </button>

            </form>
        </div>
        
        <script>
            $("#login-form").validate({
                rules:{
                        user:"required",
                        password:"required",
                },

                messages: {
                        user:"Digite seu nome de usuário",
                        password:"Digite a sua senha",
                },

                submitHandler: function(form){
                    form.submit();	
                }
            });
        </script>
    </body>
</html>