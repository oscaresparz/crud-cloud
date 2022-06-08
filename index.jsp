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
        <title>CRUD Formulario 13 Login JSPF</title>
    </head>
    <body id="fondo">
        <style>
            #boton1,#boton2,#boton3{
	        color:white;
	        border:1px solid white;
	        border-radius:10px;
            }

            label{
                color:white;
            }

            #usuario, #clave{
	        width: 400px;
            }

            #fondo{
                background-image: url(./img/234879988348512b8438b9cca45d4bac.jpeg);
            }
            
        </style>

        
        <div class="container-fluid" align="center">

            <div id="carouselExampleCaptions" class="carousel slide" data-ride="carousel">
                <ol class="carousel-indicators">
                <li data-target="#carouselExampleCaptions" data-slide-to="0" class="active"></li>
                <li data-target="#carouselExampleCaptions" data-slide-to="1"></li>
                <li data-target="#carouselExampleCaptions" data-slide-to="2"></li>
                </ol>

                <div class="carousel-inner">
                <div class="carousel-item active">
                    <img src="img/pc_gamer.jpg" class="d-block w-100"  width="600" height="600">
                    <div class="carousel-caption d-none d-md-block">
                    <h5>Pc Gamer</h5>
                    </div>
                </div>
                                
                <div class="carousel-item">
                    <img src="img/impresora.jpg" class="d-block w-100" alt="..." width="600" height="600">
                    <div class="carousel-caption d-none d-md-block">
                    <h5>Impresora</h5>
                    </div>
                </div>
                
                <div class="carousel-item">
                    <img src="img/celular.jpg" class="d-block w-100" alt="..." width="600" height="600">
                    <div class="carousel-caption d-none d-md-block">
                    <h5>Celular</h5>
                    </div>
                </div>
            
                </div>
                <a class="carousel-control-prev" href="#carouselExampleCaptions" role="button" data-slide="prev">
                <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                <span class="sr-only">Previous</span>
                </a>
                <a class="carousel-control-next" href="#carouselExampleCaptions" role="button" data-slide="next">
                <span class="carousel-control-next-icon" aria-hidden="true"></span>
                <span class="sr-only">Next</span>
                </a>
            </div>

            <h1 class="bg-success mt-2 py-3" style="color:white; border:1px solid rgb(80, 214, 87); border-radius:10px;">Formulario de Solicitud</h1>
            Solicitud de Servicio:<br>

            <form action="solicitud.jsp" method="POST">

                <div class="form-group">
                    <b><label for="usuario">Nombre Usuario:</label></b>
                <input type="text" required class="form-control" name="usuario" size="10" id="usuario">
                </div>
                
                <div class="form-group">
                    <b><label for="clave">Clave Usuario:</label></b>
                <input type="text" required class="form-control" name="clave" size="10" id="clave">
                </div><br><br>

                <div class="form-group">
                    <div class="row" >
                        <div class="col-5 col-md-3"></div>
                        <div class="col-1 col-md-3 ">
                            <input type="submit" class="bg-success py-2" id="boton1">
                        </div>
                        <div class="col-1 col-md-3 ">
                            <input type="reset" class="bg-danger py-2" id="boton3">
                        </div>
                        <div class="col-5 col-md-3"></div>
                    </div>
                </div>

                <hr>
                <h4 style="color:white;">Por Juan Sebastian Merchan Duarte B191</h4><br><br>
            </form>
        </div>

        
        <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.5.1/jquery.slim.min.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.1/umd/popper.min.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.6.0/js/bootstrap.min.js"></script>
    </body>
</html>