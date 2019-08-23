<%-- 
    Document   : main
    Created on : Aug 23, 2019, 10:47:53 AM
    Author     : javam2019
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="es">

    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta http-equiv="X-UA-Compatible" content="ie=edge">
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
              integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
        <link rel="stylesheet" href="css/main.css">
        <link rel="stylesheet" href="css/animate.css">

        <title>FutureBurguer</title>
    </head>

    <body id="main">

        <!--Cabecera del navegador-->
        <nav class="navbar navbar-light fixed-top" id="cabecera">
            <a class="navbar-brand" href="#">
                <img src="imgs/main/empleado.png" width="35" height="35" class="d-inline-block align-middle" alt="">
                <span class="text-white font-weight-bold" id="empleado">Empleado</span>
            </a>

            <a href="pags/carrito.html" class="justify-content-end navbar-brand">
                <img src="imgs/main/carrito.png" width="35" height="35" class="d-inline-block align-top" alt="">
            </a>
        </nav>
        <!--Fin cabecera del navegador-->

        <!--Contenedor principal-->
        <div class="row  col-12 col-sm-12 mainProductos " >

            <!--Inicio contenedor categorias-->
            <div class="col-3 col-sm-3 mainProductos" id="principalCategoria">
                <br>
                <br>
                <br>
                <!--Combos Desayuno-->
                <a href="Javascript:cargar('#productos','DesayunosControlador?accion=mostrarDesayunos');">
                    <div class=" mt-4 cardmain" style="width: 150px;" id="combos">
                        <img src="img/desayunos/desayunoprincipal.png" class="card-img-top imgProductos">
                        <div class="card-body">
                            <p class="card-text text-center font-weight-bold text-primary text-decoration-none">Desayunos</p>
                        </div>
                    </div>
                </a>
                <!--Fin Combos Desayuno-->
                <!--Combos Almuerzo-->
                <a href="Javascript:cargar('#productos','HamburguesasControlador?accion=mostrarHamburguesas');">
                    <div class=" mt-4 cardmain " style="width: 150px;" id="combos">
                        <img src="img/hamburguesas/comboprincipal.png" class="card-img-top imgProductos">
                        <div class="card-body">
                            <p class="card-text text-center font-weight-bold text-primary text-decoration-none">Hamburguesas</p>
                        </div>
                    </div>
                </a>
                <!--Fin Combos Almuerzo-->

                <!--Bebidas-->
                <a href="Javascript:cargar('#productos', 'pags/bebidas/bebidas.jsp');">
                    <div class=" mt-4 cardmain" style="width: 150px;" id="bebidas">
                        <img src="img/bebidas/bebidas.png" class="card-img-top imgProductos">
                        <div class="card-body">
                            <p class="card-text text-center font-weight-bold text-primary text-decoration-none">Bebidas</p>
                        </div>
                    </div>
                </a>
                <!--Fin Bebidas-->

                <!--Postres-->
                <a href="Javascript:cargar('#productos', 'PostresControlador?accion=mostrarPostres');">
                    <div class=" mt-4 cardmain " style="width: 150px;" id="postres">
                        <img src="img/postres/postres.png" class=" card-img-top imgProductos">
                        <div class="card-body">
                            <p class="card-text text-center font-weight-bold  text-primary text-decoration-none">Postres</p>
                        </div>
                    </div>
                </a>
                <!--Postres-->

                <!--Snacks-->
                <a href="Javascript:cargar('#productos', 'SnacksControlador?accion=mostrarSnacks');">
                    <div class=" mt-4 cardmain " style="width: 150px;" id="snacks">
                        <img src="img/snacks/snacks.png" class=" card-img-top imgProductos">
                        <div class="card-body">
                            <p class="card-text text-center font-weight-bold text-primary text-decoration-none">Snacks</p>
                        </div>
                    </div>
                </a>
                <!--Snacks-->



            </div>
            <!--Fin Contenedor Categorias-->
            <div class="col-9 col-sm-9 border border-primary mainProductos" id="productos">

            </div>

        </div>

        <!--
        <script
            src="https://code.jquery.com/jquery-1.12.4.min.js"
            integrity="sha256-ZosEbRLbNQzLpnKIkEdrPv7lOy9C27hHQ+Xp8a4MxAQ="
        crossorigin="anonymous"></script>-->
        <script type="text/javascript" src="js/jquery-1.12.2.min.js"></script>
        <script>

            function cargar(div, destino) {
                $(div).load(destino);
            }
        </script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"
                integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1"
        crossorigin="anonymous"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"
                integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM"
        crossorigin="anonymous"></script>

    </body>

</html>
