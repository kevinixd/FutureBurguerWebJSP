<%-- 
    Document   : combo1
    Created on : Aug 26, 2019, 12:32:23 PM
    Author     : javam2019
--%>

<%@page import="com.futureburger.modelo.Tamanios"%>
<%@page import="com.futureburger.dao.DaoTamanios"%>
<%@page import="com.futureburger.dao.DaoView_ProductosTamanios"%>
<%@page import="com.futureburger.modelo.View_productosTamanios"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="es">

    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta http-equiv="X-UA-Compatible" content="Sie=edge">
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
              integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
        <link rel="stylesheet" href="../../../css/main.css">    
        <link rel="stylesheet" href="../../css/animate.css">
        <title>Document</title>
    </head>

    <body class="border">
        <div class="row container-fluid border alto100 animated zoomIn">
            <div class="align-self-center col-12 col-sm-12" id="combo1">
                <br>
                <br>
                <br>
                <div class="row col-12 col-sm-12 align-self-center">
                    <div class="row col-12 col-sm-12 align-self-center">
                        <div class="align-items-center col-6 col-sm-6" id="combo1">
                            <div class=" cardmain" style="width: 200px;">
                                <img src="img/combos/10.png" class="card-img-top main">
                                <div class="card-body">
                                    <p class="card-text text-center font-weight-bold text-primary text-decoration-none">
                                        Jupiter's Hunger</p>
                                </div>
                                <div class="text-center">
                                    <a
                                        href="Javascript:cargar('#productos','pags/combos/combosalmuerzo/combos/tamaños/mediano1.html');">
                                        <button type="button"
                                                class="btn btn-outline-success shadow p-3 mb-2 bg-black rounded">
                                            Mediano</button></a>
                                </div>
                            </div>
                        </div>

                        <div class="align-items-center col-6 col-sm-6" id="BbdCalientes">
                            <div class=" cardmain" style="width: 200px;">
                                <img src="img/hamburguesas/2001.png" class="card-img-top main">
                                <div class="card-body">
                                    <p class="card-text text-center font-weight-bold text-primary text-decoration-none">
                                        Romana Barbacoa</p>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="text-center">
                    <br>
                    <br>
                    <br>
                    <a href="Javascript:cargar('#productos','pags/combos/almuerzos.jsp');"><button type="button" class="btn btn-outline-danger btn-lg">Regresar</button></a>
                </div>
            </div>
        </div> 
        <script src="../../js/dinamismo.js"></script>
        <script src="../../../js/jquery-1.12.2.min.js"></script>
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
