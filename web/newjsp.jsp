<%-- 
    Document   : newjsp
    Created on : 20/06/2017, 07:33:43 PM
    Author     : Administrador
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <script src="js/jquery.min.js" type="text/javascript"></script>
        <script>
              $('body').on('click', '#cargar', function (e) {
                
                  alert("HOLA MUNDO");
               });
        </script>
    </head>
    
    <body>
        <h1>Hello World!</h1>
        <button id="cargar">CARGAR</button>
    </body>
</html>
