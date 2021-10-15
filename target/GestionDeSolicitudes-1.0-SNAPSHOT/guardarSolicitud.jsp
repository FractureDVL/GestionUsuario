

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@page import="modelo.Solicitud"%>
<jsp:useBean id="gestion" class="modelo.GestionSolicitudes" scope="session"/>
<%
    String id = request.getParameter("id");
    String nombre = request.getParameter("nombre");
    String apellido = request.getParameter("apellido");
    String prioridad = request.getParameter("prioridad");
    String tipoSolicitud =  request.getParameter("tipoSolicitud");
    String asunto = request.getParameter("asunto");
    String detalles = request.getParameter("detalles");
    
    Solicitud solicitud = new Solicitud(id, nombre, apellido, prioridad, tipoSolicitud,asunto,detalles);
    gestion.agregarSolicitud(solicitud);
%>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Solicitud enviada</title>
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
    </head>
    
    <body>
        
        <div class="ctn__form">

            <div class="form">
                <h1 class="form__hero">Su solicitud se a registrado con exito!</h1>
                <a class="form__back" href="index.jsp">Ver solicitudes registradas</a>
            </div>
    </body>
</html>
