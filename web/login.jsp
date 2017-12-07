<%-- 
    Document   : login
    Created on : 13/05/2017, 01:33:13 PM
    Author     : Jean Pierre
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
        <link rel="stylesheet" href="css/bootstrap.min.css">
        <link rel="stylesheet" href="css/style.css">
        <title>Iniciar Sesión</title>
    </head>
    <body>
        <!-- Modal -->
        <div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
            <div class="modal-dialog" role="document">
                <div class="modal-content">

                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                        <h4 class="modal-title" id="myModalLabel">Registra tu Edificio o Residencial</h4>
                    </div>
                    <div class="modal-body">
                        <form class="form-horizontal">
                            <div class="form-group">
                                <label class="col-sm-4 control-label">Nombre del Edificio:</label>
                                <div class="col-sm-8">
                                    <input class="form-control" type="text" name="txtNomEdificio">
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="col-sm-4 control-label">Pais:</label>
                                <div class="col-sm-8">
                                    <select class="form-control">
                                        <option>Peru</option>
                                        <option>Chile</option>
                                        <option>Brasil</option>
                                    </select>
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="col-sm-4 control-label">Tu Nombre:</label>
                                <div class="col-sm-8">
                                    <input class="form-control" type="text" name="txtNombre">
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="col-sm-4 control-label">Email:</label>
                                <div class="col-sm-8">
                                    <input class="form-control" type="email" name="txtEmail">
                                </div>
                            </div>

                            <div class="form-group">
                                <label class="col-sm-4 control-label">Password:</label>
                                <div class="col-sm-8">
                                    <input class="form-control" type="password" name="txtPass1">
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="col-sm-4 control-label">Confirmar Password:</label>
                                <div class="col-sm-8">
                                    <input class="form-control" type="password" name="txtPass2">
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="col-sm-4 control-label">Telefono:</label>
                                <div class="col-sm-8">
                                    <input class="form-control" type="text" name="txtTelf">
                                </div>
                                </div>
                        </form>
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-default" data-dismiss="modal">Salir</button>
                        <button type="button" class="btn btn-primary">Registrar</button>
                    </div>

                </div>
            </div>
        </div>
        <div class="container well" id="sha">
            <div class="row">
                <div class="col-xs-12">
                    <img src="images/avatar.png" class="img-responsive" id="avatar">
                </div>
            </div>
            <form class="login" action="check.php" method="POST">
                <div class="form-group">
                    <input type="email" name="email" class="form-control" placeholder="Correo Electronico" required autofocus>
                </div>
                <div class="form-group">
                    <input type="password" class="form-control" placeholder="Contraseña" name="pass" required>
                </div>

                <!-- Button trigger modal -->
                <div class="form-group">
                    <a href="index.jsp" class="btn btn-sm btn-primary btn-block" role="button">Iniciar Sesión</a>
                    <%--<button class="btn btn-sm btn-primary btn-block" type="submit">Iniciar Sesión</button>--%>
                </div>
                <div class="form-group">
                    <button type="button" class="btn btn-success btn-sm btn-block" data-toggle="modal" data-target="#myModal">
                        Registrarse
                    </button>
                </div>

                <div class="form-group">
                    <p class="help-block"><a href="#" align="center">¿No puedes acceder a tu cuenta?</a></p>
                </div>
            </form>


        </div>
        <script src="js/jquery.js"></script>
        <script src="js/bootstrap.min.js"></script>
    </body>
</html>

