<%-- 
    Document   : DeleteOrphanage
    Created on : 31/12/2020, 19:30:03
    Author     : Jamilly
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
     <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" type="text/css" href="styles/global.css">
        <link rel="stylesheet" type="text/css" href="styles/done.css">
        <link rel="stylesheet" type="text/css" href="styles/delete.css">

        <title>Deletar orfanato</title>
        
    </head>
    <body>
        <div id = "page-created-orphanage">
            <div class="content">
                <main>
                    <h1>Excluir!</h1>
                    <p>
                        Essa ação exclui o orfanato ${orphanage.name}. <br> Tem certeza que deseja continuar?
                    </p>
                </main>
                <div class="buttons">
                    <a href = "RemoveOrphanage?id=${orphanage.id}" class="go-back">
                        <p>Excluir Orfanato</p>
                    </a>
                    <a href = "Dashboard" class="go-back">
                        <p>Voltar</p>
                    </a>
                </div>   
            </div>
        </div>
    </body>
</html>
