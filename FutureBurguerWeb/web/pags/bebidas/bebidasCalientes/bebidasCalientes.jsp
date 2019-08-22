<%-- 
    Document   : bebidasCalientes
    Created on : Aug 22, 2019, 12:43:30 PM
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
        <meta http-equiv="X-UA-Compatible" content="ie=edge">
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
              integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
        <link rel="stylesheet" href="../../../css/main.css">
        <link rel="stylesheet" href="../../../css/prueba.css">
        <title>Document</title>
    </head>

    <body class="border">
        <%
            //Obtiene el atributo que se le asigno en el controlador de bebidas
            ArrayList<Productos> lista = (ArrayList) request.getAttribute("listaBebidasCalientes");
        %>

        <!--Contenedor para las bebidas calientes-->
        <div class="row container-fluid alto100 animated zoomIn" id="bebidasCalientes">
            <div class="row col-12 col-sm-12 align-self-center">

                <div class="row my-5">

                    <%
                        int elemento = -1;
                        int cantidadFilas = lista.size() / 1;
                        for (int i = 0; i < cantidadFilas; i++) {
                            for (int j = 0; j < 2; j++) {
                                elemento++;
                    %>
                    <!--Cafe-->
                    <div class="align-items-center col-6 col-sm-6">
                        <div class=" cardmain" style="width: 200px;">
                            <a href="Javascript: cargar('#productos', '');">
                                <img src="img/bebidas/bebidascalientes/<%= lista.get(elemento).getImagen() %>" class="card-img-top main">
                                <div class="card-body">
                                    <p class="card-text text-center font-weight-bold text-primary text-decoration-none">
                                        <%= lista.get(elemento).getProductonombre() %></p>
                                </div>
                            </a>
                        </div>
                    </div>
                    <!--Cafe-->
                    <%    }
                        }
                    %>

                </div>

            </div>

        </div>

        <script src="../../../js/dinamismo.js"></script>
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
