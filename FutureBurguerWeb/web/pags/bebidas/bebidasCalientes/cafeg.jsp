<%-- 
    Document   : cafeg
    Created on : Aug 26, 2019, 9:53:37 AM
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

        <%
            View_productosTamanios producto = new View_productosTamanios();
            DaoView_ProductosTamanios dao = new DaoView_ProductosTamanios();
            producto = dao.verProductoDetalle(2015);

            DaoTamanios dao2 = new DaoTamanios();
            Tamanios tamanios = new Tamanios();
            String controlador = "";
        %>

        <!--Contenedor para snacks-->
        <div class="row container-fluid border alto100 animated zoomIn">
            <div class="align-self-center col-12 col-sm-12" id="cafeg">
                <br>
                <br>

                <div class=" text-center">
                    <button type="button" class="btn btn-outline-danger btn-lg" id="btnDisminuir">-</button>
                    <input type="text" name="txt1" id="txt1" value="1" class="card-text text-center"> </input>
                    <button type="button" class="btn btn-outline-primary btn-lg" id="btnIncrementar">+</button>
                </div>


                <!--Snacks No. 1-->
                <div class=" col-sm-12  ">
                    <div class="card-text text-center">
                        <div class="doc">
                            <div class="box">
                                <img src="img/bebidas/bebidascalientes/<%= producto.getProductoImgView()%>" class="card-img-top main">
                            </div>
                        </div>
                    </div>
                    <p class="card-text text-center font-weight-bold text-primary text-decoration-none h2">Cafe Grande</p>
                </div>

                <div>
                    <br>
                    <p class="card-text text-center "><%= producto.getProductoDescpView() %>
                    </p>
                    <p class="card-text text-center h3"><br>Precio: <%= producto.getPrecioView() %></p>
                    <br>
                    <br>
                    <div class=" text-center">
                        <a href="Javascript:cargar('#productos','pags/bebidas/bebidasCalientes/bebidacafe.jsp');">
                            <button type="button" class="btn btn-outline-danger btn-lg">Regresar A Bebida Cafe!</button></a>
                        <a href="Javascript:cargar('#productos','pags/bebidas/bebidasCalientes/bebidasCalientes.jsp');">
                            <button type="button" class="btn btn-outline-primary btn-lg">Agregar A Carito!</button></a>
                    </div>
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
