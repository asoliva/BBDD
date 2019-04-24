<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="mipk.beanDB"%>
<%@page import="objetoscrm.*"%>
<%
try {
	String aux=session.getAttribute("usuario").toString();
} catch (Exception e) {
	response.sendRedirect("cerrarsesion.jsp");
}
%>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Amatic+SC">
<style>
    body, html {
        height: 100%;
        margin-left:5px;
    }

    h1, h2, h3, h4, h5, div {
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
<body onload="alert('no way!!!');">
<h1><%=session.getAttribute("usuario") %>: Estos son los datos</h1>
<hr/>
<p><div style="margin-top:40px">
            <span class="w3-text-white w3-hide-small" style="font-size:100px"></span>
            <span class="w3-text-white w3-hide-large w3-hide-medium" style="font-size:60px"></span>
            <p><a href="bienvenido.jsp" class="w3-button w3-xxlarge w3-black">PAGINA PRINCIPAL</a></p>
        </div></p>
<p><div style="margin-top:50px">
            <span class="w3-text-white w3-hide-small" style="font-size:100px"></span>
            <span class="w3-text-white w3-hide-large w3-hide-medium" style="font-size:60px"></span>
            <p><a href="cerrarsesion.jsp" class="w3-button w3-xxlarge w3-black">SALIR</a></p>
        </div></p>
<hr/>
<br/>
<% 
String query="select idEquipo, nombre, direccion from Equipos";
beanDB basededatos = new beanDB();
String [][] tablares = basededatos.resConsultaSelectA3(query);
ArrayList<Equipos> listaEquipos = new ArrayList<Equipos>();
for (int i=0; i<tablares.length;i++) {
	listaEquipos.add(new Equipos(tablares[i][0],tablares[i][1],tablares[i][2]));
}
%> 
<table>
<% for (Equipos e:listaEquipos) { //g es una variable tipo grupo que va recorriendo la lista
	%><tr>
	 <td> <%=e.getidEquipo() %> </td>
	 <td> <%=e.getNombre() %> </td>
	 <td> <%=e.getDireccion() %> </td>
	 </tr> <% 
}
%>
</table>
</body></html>