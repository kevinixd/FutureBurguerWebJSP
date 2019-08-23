<%-- 
    Document   : postres
    Created on : Aug 23, 2019, 12:15:19 PM
    Author     : javam2019
--%>

<%@page import="com.futureburger.modelo.Productos"%>
<%@page import="java.util.ArrayList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="es">

    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta http-equiv="X-UA-Compatible" content="Sie=edge">
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
              integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
        <link rel="stylesheet" href="../../css/main.css">
        <link rel="stylesheet" href="../../css/animate.css">
        <title>Document</title>
    </head>

    <body class="border">

        <%
            ArrayList<Productos> lista = (ArrayList) request.getAttribute("listaPostres");
            int tam = lista.size();
            int cant = 0;
        %>
        <!--Inicio postres-->
        <!--Contenedor para los combos-->
        <div class="row container-fluid alto100 animated zoomIn">
            <div class="col-12 col-sm-12 align-self-center" id="postres">
                
                <div class="row my-8">
                <%
                    for (Productos elem : lista) {
                            if (tam == 1) {
                                cant = 12;
                            } else if (tam == 2) {
                                cant = 6;
                            } else{
                                cant = 4;
                            }
                %>
                <!--Fila 1-->
                    <!--Postre 1-->
                    <div class="align-items-center col-<%= cant%>">
                        <div class=" cardmain" style="width: 200px;">
                            <a href="Javascript: cargar('#productos', '');">
                                <img src="img/postres/<%= elem.getImagen() %>" class="card-img-top main">
                                <div class="card-body">
                                    <p class="card-text text-center font-weight-bold text-primary text-decoration-none">
                                        <%= elem.getProductonombre() %></p>
                                </div>
                            </a>
                        </div>
                    </div>
                    <!--Postre 1-->
                    <%
                        }
                    %>
                </div>
                    

                    <div class="align-items-right col-12">
                        <div class=" text-center">

                            <a href="prueba.html"><button type="button" class="btn btn-outline-danger btn-lg">Cancelar
                                    Orden</button></a>
                            <a href="pags/carrito.html">
                                <button type="button" class="btn btn-outline-primary btn-lg">Pagar Orden</button></a>
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
