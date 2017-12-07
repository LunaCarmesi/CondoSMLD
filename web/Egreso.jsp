<%-- 
    Document   : Egreso
    Created on : 20-jun-2017, 11:19:40
    Author     : Administrador
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
        <link rel="stylesheet" href="css/bootstrap.min.css">
        <link rel="stylesheet" href="css/style.css">
        <link rel="stylesheet" href="css/bootstrap-datetimepicker.min.css">

        <title>Campiña II - Registrar Egreso</title>
    </head>
    <body>

        <%-- Menu --%>
        <%@include file="menu.jsp" %>

        <section class="main container">
            <div class="row">
                <section class="col-lg-12">
                    <div class="miga-de-pan">
                        <ol class="breadcrumb">
                            <li><a href="index.jsp">Inicio</a></li>
                            <li class="active">Registrar Egreso</li>
                        </ol>
                    </div>

                    <section class="posts col-md-6 col-md-offset-3">
                        <div class="panel panel-primary">
                            <div class="panel-heading">
                                <h3 class="panel-title">Datos del Egreso</h3>
                            </div>
                            <div class="panel-body">
                                <form class="form-horizontal">
                                    <div class="form-group">
                                        <label for="txtConcepto" class="col-sm-5 control-label">Proveedor:</label>
                                        <div class="col-sm-7">
                                            <div class='input-group date' id='modal1'>
                                                <input type='text' class="form-control" />
                                                <span class="input-group-addon">
                                                    <span class="glyphicon glyphicon-search"></span>
                                                </span>
                                            </div>


                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label for="txtConcepto" class="col-sm-5 control-label">Concepto:</label>
                                        <div class="col-sm-7">
                                            <input type="text" class="form-control" id="txtConcepto" placeholder="Concepto">
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label for="txtConcepto" class="col-sm-5 control-label">Monto:</label>
                                        <div class="col-sm-7">

                                            <label class="sr-only" for="exampleInputAmount">Monto (en Soles)</label>
                                            <div class="input-group">
                                                <div class="input-group-addon">S/.</div>
                                                <input type="text" class="form-control" id="txtmonto" placeholder="Monto">

                                            </div>

                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label for="txtConcepto" class="col-sm-5 control-label">Fecha de Movimiento:</label>
                                        <div class="col-sm-7">
                                            <div class='input-group date' id='datetimepicker1'>
                                                <input type='text' class="form-control" />
                                                <span class="input-group-addon">
                                                    <span class="glyphicon glyphicon-calendar"></span>
                                                </span>
                                            </div>


                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label for="txtReferencia" class="col-sm-5 control-label">Referencia:</label>
                                        <div class="col-sm-7">
                                            <input type="text" class="form-control" id="txtReferencia" placeholder="ejm. Rec. Ingreso 0001">
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label for="CTABanca" class="col-sm-5 control-label">Cuenta Destino:</label>
                                        <div class="col-sm-7">
                                            <select class="form-control" id="CTABanca">
                                                <option value="01">Cuenta Corriente 01</option>
                                                <option value="02">Caja Chica</option>
                                            </select>
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label for="CPresu" class="col-sm-5 control-label">Clase Presupuestal:</label>
                                        <div class="col-sm-7">
                                            <select class="form-control" id="CPresu">
                                                <option value="07">EgOrd - a. Papelería y Copias</option>
                                                <option value="08">EgOrd - b. Agua</option>
                                                <option value="09">EgOrd - c. Luz - Electricidad</option>
                                                <option value="10">EgOrd - d. Telefono</option>
                                                <option value="11">EgOrd - e. Limpieza</option>
                                                <option value="12">EgOrd - f. Jardinería</option>
                                                <option value="13">EgOrd - g. Administración</option>
                                                <option value="14">EgOrd - h. Vigilancia y Seguridad</option>
                                                <option value="15">EgOrd - i. Mantenimiento Gral.</option>
                                                <option value="16">EgOrd - j. Sueldos</option>
                                                <option value="17">EgOrd - k. Comis. e Intereses Banco</option>
                                                <option value="18">EgOrd - l. Impuestos y Derechos</option>
                                                <option value="19">EgOrd - m. Otros Egresos Ord.</option>
                                                <option value="20">EgExtr - a. Obras y Reparaciones</option>
                                                <option value="21">EgExtr - b. Adq. y Mmto. de Equipos</option>
                                                <option value="22">EgExtr - c. Otros Egresos Ext.</option>
                                            </select>
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label for="TipoFondo" class="col-sm-5 control-label">Tipo de Fondo:</label>
                                        <div class="col-sm-7">
                                            <select class="form-control" id="TipoFondo">
                                                <option value="01">Fondo Ordinario</option>
                                                <option value="02">Fondo Extraordinario</option>
                                                <option value="03">Fondo Reserva</option>
                                            </select>
                                        </div>
                                    </div><div class="form-group">
                                        <label for="txtaComentarios" class="col-sm-5 control-label">Comentarios:</label>
                                        <div class="col-sm-7">
                                            <textarea class="form-control" rows="3" id="txtaComentarios"></textarea>
                                        </div>
                                    </div>
                                </form>
                            </div>
                            <div class="panel-footer">
                                <button type="button" class="btn btn-primary" id="btnSave">Agregar</button>
                            </div>
                        </div>

                    </section>

                </section>

            </div>
        </section>



        <%-- Footer --%>
        <%@include file="footer.jsp" %>

        <script src="js/jquery.min.js"></script>
        <script src="js/bootstrap.min.js"></script>
        <script src="js/moment-with-locales.js"></script>
        <script src="js/bootstrap-datetimepicker.min.js"></script>
        <script type="text/javascript">
            $(function () {
                $('#datetimepicker1').datetimepicker({
                    locale: 'es',
                    format: 'DD/MM/YYYY'
                });
            });
            $(function () {
                $('#datetimepicker2').datetimepicker({
                    locale: 'es',
                    format: 'DD/MM/YYYY'
                });
            });
        </script>
    </body>
</html>

