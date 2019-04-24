<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@page import="mipk.Sesionok"%>
<html>
<%
session.invalidate();
%>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
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
<h1 class="w3-center" style="margin-top:300px;">Sesión cerrada</h1><br/>
<div class="w3-display-middle w3-center">
            <span class="w3-text-white w3-hide-small" style="font-size:100px"></span>
            <span class="w3-text-white w3-hide-large w3-hide-medium" style="font-size:60px"></span>
            <p><a href="index.jsp" class="w3-button w3-xxlarge w3-black">VOLVER</a></p>
        </div><br/>
</body>
</html>