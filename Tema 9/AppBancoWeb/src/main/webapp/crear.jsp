<%-- 
    Document   : crear
    Created on : 26 ene. 2020, 12:48:37
    Author     : carlos
--%>

<%@page import="modelo.Usuario"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
        <meta http-equiv="x-ua-compatible" content="ie=edge">
        <title>Crear Cuenta o Usuario</title>
        <meta name="description" content="">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

        <link rel="manifest" href="site.webmanifest">
        <link rel="apple-touch-icon" href="icon.png">
        <link rel="icon" type="image/png" href="images/icons/favicon.ico"/>
        <!-- Place favicon.ico in the root directory -->

        <link rel="stylesheet" href="css/normalize.css">
        <link rel="stylesheet" href="css/estilos.css">
        <link rel="stylesheet" href="css/all.min.css">
        <link rel="stylesheet" type="text/css" href="vendor/bootstrap/css/bootstrap.min.css">
        <link rel="stylesheet" type="text/css" href="css/util.css">
        <link rel="stylesheet" type="text/css" href="css/main.css">
        <link href="https://fonts.googleapis.com/css?family=Open+Sans|Oswald|PT+Sans" rel="stylesheet">
    </head>


    <body>
        <%
            if (session.getAttribute("usuario") != null) {
                Usuario usuario = (Usuario) session.getAttribute("usuario");

        %>

        <!-- INICIO HEADER -->
        <header class="site_header">
            <div class="hero" id="inicio">
                <div class="contenido_header">
                    <div class="barra_sup clearfix">
                        <div class="logo">
                            <img src="images/logo_cp.gif" alt="logo_site">
                        </div>
                        <nav class="navegacion_principal clearfix">
                            <a href="#inicio">Bienvenido: <%=usuario%></a>
                        </nav>
                    </div>
                </div>
            </div> <!--DIV CONTENIDO_HERO-->
        </div> <!--DIV HERO-->
    </header>
    <!-- FIN HEADER -->

    <!-- Acerca de mi-->

    <section id="sobremi" class="seccion contenedor">
        <h2>Creación de cuenta</h2>
        <br>
        <div class="sobremi clearfix">  
            <ul>
                <li>Introduzca los datos de la nueva Cuenta</li>
                <li>Debe introducir un DNI de un cliente ya existente</li>
            </ul>
            <br>


            <form class="form-inline" action="creacuenta.jsp">
                <label class="sr-only" for="inlineFormInputName2">Nombre</label>
                <input type="text" class="form-control mb-2 mr-sm-2" name="dni" id="inlineFormInputName2" placeholder="DNI" required>

                <label class="sr-only" for="inlineFormInputGroupUsername2">Interés</label>
                <div class="input-group mb-2 mr-sm-2">
                    <div class="input-group-prepend">
                        <div class="input-group-text">-</div>
                    </div>
                    <input type="text" class="form-control" name="interes" id="inlineFormInputGroupUsername2" placeholder="Interes" required>
                </div>


                <button type="submit" class="btn btn-primary mb-2">Crear Cuenta</button>
            </form>
            <br>
            <br>
            <h2>Creación de Cliente</h2>
            <br>

            <ul>
                <li>Introduzca los datos del nuevo Cliente y el interés de su primera cuenta</li>

            </ul>
            <br>

            <form class="form-inline" action="creacliente.jsp">
                <label class="sr-only" for="inlineFormInputName2">Nombre</label>
                <input type="text" class="form-control mb-2 mr-sm-2" name="nombre" id="inlineFormInputName2" placeholder="Nombre" required>
                <label class="sr-only" for="inlineFormInputName2">Apellidos</label>
                <input type="text" class="form-control mb-2 mr-sm-2" name="apel" id="inlineFormInputName2" placeholder="Apellidos" required>
                <label class="sr-only" for="inlineFormInputName2">DNI</label>
                <input type="text" class="form-control mb-2 mr-sm-2" name="dni" id="inlineFormInputName2" placeholder="DNI" required>
                <label class="sr-only" for="inlineFormInputName2">Móvil</label>
                <input type="text" class="form-control mb-2 mr-sm-2" name="movil" id="inlineFormInputName2" placeholder="Num Móvil" required>
                <label class="sr-only" for="inlineFormInputName2">Email</label>
                <input type="text" class="form-control mb-2 mr-sm-2" name="email" id="inlineFormInputName2" placeholder="Email" required>
                <label class="sr-only" for="inlineFormInputName2">Fecha Nac</label>
                <input type="date" class="form-control mb-2 mr-sm-2" name="fecha" id="inlineFormInputName2" placeholder="Fecha_Nac" required>
                <label class="sr-only" for="inlineFormInputName2">Interés</label>
                <input type="text" class="form-control mb-2 mr-sm-2" name="interes" id="inlineFormInputName2" placeholder="Interés" required>

                <button type="submit" class="btn btn-primary mb-2">Crear Cliente</button>
            </form>

            <form method="get" action="main.jsp">

                <button type="submit" value="Volver" class="btn btn-primary"><span class="glyphicon glyphicon-plus"></span> Volver</button>           
            </form>
        </div>
    </section>

    <!-- Fin Acerca de mi-->



    <!-- FIN HEADER -->

    <footer class="site_footer">

        <div class="menu">

            <nav class="redes_sociales">  
                <a href="main.jsp"><i class="far fa-envelope-open"></i></a>
                <a href="https://t.me/carlosbarroso"><i class="fab fa-telegram-plane"></i></a>
                <a href="https://twitter.com/carlos_profe_"><i class="fab fa-twitter"></i></a>
                <a href="https://github.com/carlosprofe6"><i class="fab fa-github-square"></i></a>
            </nav>
        </div>
    </div>

    <p class="copy">Todos los derechos reservados &copy;</p>




</footer>



<!-- FIN FOOTER -->

<script src="js/vendor/modernizr-3.6.0.min.js"></script>
<script src="https://code.jquery.com/jquery-3.3.1.min.js" integrity="sha256-FgpCb/KJQlLNfOu91ta32o/NMZxltwRo8QtmkMRdAu8=" crossorigin="anonymous"></script>
<script>window.jQuery || document.write('<script src="js/vendor/jquery-3.3.1.min.js"><\/script>')</script>
<script src="js/plugins.js"></script>
<script src="js/main.js"></script>

<!--===============================================================================================-->
<script src="vendor/animsition/js/animsition.min.js"></script>
<!--===============================================================================================-->
<script src="vendor/bootstrap/js/popper.js"></script>
<script src="vendor/bootstrap/js/bootstrap.min.js"></script>
<!--===============================================================================================-->
<script src="vendor/select2/select2.min.js"></script>
<!--===============================================================================================-->
<script src="vendor/daterangepicker/moment.min.js"></script>
<script src="vendor/daterangepicker/daterangepicker.js"></script>
<!--===============================================================================================-->
<script src="vendor/countdowntime/countdowntime.js"></script>
<!--===============================================================================================-->


<% } else { //Cuando no existe la sesión
        session.setAttribute("error", "No está logueado");
        response.sendRedirect("error.jsp");
    }%>
</body>
</html>

