<%@page import="modelo.Solicitud" %>
<%@page contentType="text/html" pageEncoding="UTF-8" %>
<!DOCTYPE html>

<jsp:useBean id="gestion" class="modelo.GestionSolicitudes" scope="session"/>
<html lang="en">
<head>

    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Gestion de Solicitudes</title>
    <!--Google fonts free to play-->
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Rhodium+Libre&display=swap" rel="stylesheet">
    <!-- Normalize -->
    <link rel="stylesheet" href="css/normalize.css">
    <!--- Mi css -->
    <link rel="stylesheet" href="css/MyStyle.css">
    <!--Mi favicon-->
    <link rel="shortcut icon" href="assets/img/taco-emote.png" type="image/x-icon">
    <!--Data table-->
    <link rel="stylesheet" href="https://cdn.datatables.net/1.11.3/css/jquery.dataTables.min.css">
    <script>
        $(document).ready(function(){
        $("#myInput").on("keyup", function() {
            var value = $(this).val().toLowerCase();
            $("#gestionTable tr").filter(function() {
            $(this).toggle($(this).text().toLowerCase().indexOf(value) > -1)
                });
            });
        });
    </script>
    

</head>

<body>
    <div class="background background--grey-dark">

        <div class="ctn__links">
            <h1 class="hero__text">Gestión de<span class="hero--yellow">solicitudes</span><img class="taco"
                    src="assets/img/taco-emote.png" alt="taco emote windows"></h1>
            <div class="container">

                <div class="link__ctn">
                    <a class="link link--dark link--text-dec" href="agregarSolicitud.html">Crear solicitud</a>
                </div>

                <div class="link__ctn">
                    <a class="link link--dark link--text-dec" href="estadisticas.jsp">Estadisticas</a>
                </div>
            </div>

        </div>

        <div>
            <input class="form-control" id="myInput" type="text" placeholder="Search..">

            <table id="gestionTable" class="dataTable">
                <thead>
                    <tr>
                        <th>Id</th>
                        <th>Asunto</th>
                        <th>Tipo</th>
                        <th>Empleado</th>
                        <th>Prioridad</th>
                    </tr>
                </thead>
                <tbody>
                        <% for (Solicitud solicitud : gestion.getListaSolicitudes()){%>
                        <tr >
                            <td><%=solicitud.getId()%></td>
                            <td><%=solicitud.getAsunto()%></td>
                            <td><%=solicitud.getTipoSolicitud()%></td>
                            <td></td><%=solicitud.getNombre() +" "+ solicitud.getApellido()%></td>
                            <td><%=solicitud.getPrioridad()%></td>
                        </tr>       
                        <%}%>
                </tbody>
        </div>
        
    </body>
</html>