<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>
<%@include file="WEB-INF/jspf/conectar.jspf" %>

<!DOCTYPE html>
<html lang="es">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta http-equiv="X-UA-Compatible" content="ie=edge">
        <meta name="Description" content="Enter your description here"/>
        <link rel="icon" href="img/kisspng-computer-icons-user-clip-art-user-5abf13db5624e4.1771742215224718993529.png">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.6.0/css/bootstrap.min.css">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css">
        <link rel="stylesheet" href="assets/css/style.css">
        <title>CRUD Solicitud JSPF</title>
    </head>
    <body id="fondo">
        <style>
            #boton1,#boton2,#boton3{
	        color:white;
	        border:1px solid white;
	        border-radius:10px;
            }

            #codigo{
	        width: 400px;
            }

            #fondo{
                background-image: url(./img/234879988348512b8438b9cca45d4bac.jpeg);
            }

            label{
                color:white;
            }
        </style>

        <sql:query var="rs" dataSource="${bd}">
            select * from Usuarios
        </sql:query>

        <div class="container-fluid" align="center">

            <h1 class="bg-success mt-2 py-3" style="color:white; border:1px solid rgb(80, 214, 87); border-radius:10px;">Formulario de Solicitud</h1>
            Solicitud de Servicio:<br>

            <form action="insertar.jsp" method="POST">

                <div class="form-group">
                    <b><label for="co">Codigo empleado:</label></b>
                <input type="text" required class="form-control" name="co" size="10" id="codigo">
                </div>
                
                <div class="form-group">
                    <b><label for="sex">Sexo:</label></b><br>
                    <div class="row">
                        <div class="col-3 col-md-4 col-lg-5"></div>
                        <div class="col-3 col-md-2 col-lg-1">
                            Masculino:<input type="radio" class="form-control" name="sex" value="Masculino">
                        </div>
                        <div class="col-3 col-md-2 col-lg-1">
                            Femenino:<input type="radio" class="form-control" name="sex" value="Femenino"><br>
                        </div>
                        <div class="col-3 col-md-4 col-lg-5"></div>
                    </div>
                    
                </div>
                
                <div class="form-group">
                    <b><label>Servicio Solicitado:</label></b>
                    <div class="row">
                        <div class="col-3 col-md-4 col-lg-5"></div>
                        <div class="col-3 col-md-2 col-lg-1">
                            Hardware:<input type="checkbox" class="form-control" name="serv" value="Hardware">
                        </div>
                        <div class="col-3 col-md-2 col-lg-1">
                            Software:<input type="checkbox" class="form-control" name="serv" value="Software"><br><br>
                        </div>
                        <div class="col-3 col-md-4 col-lg-5"></div>
                    </div>
                </div>
                
                <b><label>Departamento:</label></b><br>
                <select name="depto">
                    <option value="Ventas">Ventas</option>
                    <option value="Publicidad">Publicidad</option>
                    <option value="Personal">Personal</option>
                </select>
                <br><br>
                <b><label>Descripcion:</label></b><br>
                <textarea name="men"></textarea><br><br>
                <hr>
                <div class="form-group">
                        <div class="row" >
                            <div class="col-4 ">
                                <input type="submit" class="bg-success py-2" id="boton1">
                            </div>
                            <div class="col-4 mt-1">
                                <a href="mostrar.jsp" class="bg-dark py-2 px-3" id="boton2">Ver Registros</a><br><br><br>
                            </div>
                            <div class="col-4 mt-1">
                                <a href="index.jsp" class="bg-danger py-2 px-3" id="boton2">Salir</a>
                            </div>
                        </div>
                </div>

                <h4 style="color:white;">Por Juan Sebastian Merchan Duarte B191</h4>
            </form>
        </div>

        <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.5.1/jquery.slim.min.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.1/umd/popper.min.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.6.0/js/bootstrap.min.js"></script>
    </body>
</html>