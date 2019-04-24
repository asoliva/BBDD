<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@page import="mipk.Sesionok"%><html>
<head>
<% 
//aquí pongo todo el código java que quiera que mi servidor ejecute.
String usuario=request.getParameter("usuario");
String pass=request.getParameter("pass");
if (usuario == null) usuario="";
if (pass == null) pass="";
boolean ok=false;
try {
	String aux=session.getAttribute("usuario").toString();
	ok=true;
} catch (Exception e) {
	ok=false;
}
if (!ok)
	if (usuario.equals("admin") && pass.equals("1357")) {
		//usuario correcto - Tengo que crearle un handler de sesion
		session.setAttribute("usuario",usuario);
		ok=true;
	}

%><meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Bienvenido</title>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Amatic+SC">
<style>
    body, html {
        height: 100%;
    }

    body, h1, h2, h3, h4, h5, h6 {
        font-family: "Amatic SC", sans-serif;
    }

    .menu {
        display: none;
    }

    .bgimg {
        background-repeat: no-repeat;
        background-size: cover;
        background-image: url("balon.jpg");
        min-height: 90%;
    }
</style>
</head>
<body>
<!-- Navbar (sit on top) -->
    <div class="w3-top w3-hide-small">
        <div class="w3-bar w3-xlarge w3-black w3-opacity w3-hover-opacity-off" id="myNavbar">
        </div>
    </div>
<% if (ok) { %>
    <header style="margin-top:250px;">
<h1 class="w3-center">Bienvenido <%=session.getAttribute("usuario") %></h1>
<h3 class="w3-center">Sesión iniciada</h3>
    </header>
<hr/>

        <div class="w3-display-middle w3-center">
            <span class="w3-text-white w3-hide-small" style="font-size:100px"></span>
            <span class="w3-text-white w3-hide-large w3-hide-medium" style="font-size:60px"></span>
            <p><a href="verdatos.jsp" class="w3-button w3-xxlarge w3-black">ACCEDER A LOS DATOS</a></p>
        </div><br/>
<br/><br/>        <div class="w3-display-middle w3-center" style="margin-top:90px">
            <span class="w3-text-white w3-hide-small" style="font-size:100px"></span>
            <span class="w3-text-white w3-hide-large w3-hide-medium" style="font-size:60px"></span>
            <p><a href="cerrarsesion.jsp" class="w3-button w3-xxlarge w3-black">SALIR</a></p>
        </div>

<% } else { 
	//AHORA PONGO EL HTML DE SESION INCORRECTA %>
<h1 class="w3-center" style="margin-top:300px;">Usuario y/o contraseña incorrectos.</h1>
<h3 class="w3-center">Por favor, inténtelo de nuevo.</h3><br/>
    <div class="w3-display-middle w3-center" style="margin-top:90px">
        <span class="w3-text-white w3-hide-small" style="font-size:100px"></span>
        <span class="w3-text-white w3-hide-large w3-hide-medium" style="font-size:60px"></span>
        <p><a href="cerrarsesion.jsp" class="w3-button w3-xxlarge w3-black">SALIR</a></p>
    </div>
<% } %>
</body>
</html>