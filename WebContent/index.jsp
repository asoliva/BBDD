<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<!DOCTYPE html>
<title>W3.CSS Template</title>
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
<script type="text/javascript">
function compruebayenvia() {
	datos=document.iniciosesion;
	if (datos.usuario.value == '' ||
			datos.pass.value == '')
		alert ('¡Tiene que rellenar todos los campos!');
	else datos.submit();
}
function compruebanums(campo, evento) {
	var keycode;
	if (window.event) keycode = window.event.keyCode;
	else if (evento) keycode = evento.which;
	else return true;
	if (keycode < 48 || keycode > 57) //Rango ASCII de números
	{
		if (keycode != 8 && keycode != 27 && keycode != 0 ) { //Caracteres especiales permitidos
			alert('Sólo puede introducir números ');
			return false;
		}
		else return true;
	}
	else return true;
}
function compruebaalfan(campo, evento) {
	var keycode;
	if (window.event) keycode = window.event.keyCode;
	else if (evento) keycode = evento.which;
	else return true;
	if (( keycode < 48 || keycode > 57 ) && ( keycode < 64 || keycode > 90 ) && ( keycode < 97 || keycode > 122 )) //Rango ASCII de números y letras
	{
		if (keycode != 8 && keycode != 27 && keycode != 0 ) { //Caracteres especiales permitidos
			alert('Sólo puede introducir letras y números ');
			return false;
		}
		else return true;
	}
	else return true;
}
</script>
<body>

    <!-- Navbar (sit on top) -->
    <div class="w3-top w3-hide-small">
        <div class="w3-bar w3-xlarge w3-black w3-opacity w3-hover-opacity-off" id="myNavbar">
        </div>
    </div>

    <!-- Header with image -->
    <header class="bgimg w3-display-container w3-grayscale-min" id="home">
        <div class="w3-display-middle w3-center">
            <span class="w3-text-white w3-hide-small" style="font-size:100px"></span>
            <span class="w3-text-white w3-hide-large w3-hide-medium" style="font-size:60px"></span>
            <form action="bienvenido.jsp" method="post" name="iniciosesion" >
            <table style="text-align: left; border: none;">
                <tr>
                    <td>
                        <input type="hidden" name="varoculta" value="secreto" />
                        <b>Usuario:</b>
                    </td>
                    <td>
                        <input type="text" name="usuario" onkeypress="return compruebaalfan(this,event);" maxlength="10" value="" class="inputgris" />
                    </td>
                </tr>
                <tr>
                    <td>
                        <b>Contraseña:</b>
                    </td>
                    <td>
                        <input type="password" name="pass" onkeypress="return compruebaalfan(this,event);" maxlength="8" value="" class="inputgris" />
                    </td>
                </tr>
                <tr>
                    <td></td>
                </tr>
            </table>
            </form>
            <p><input type="button" name="send" value="INICIAR SESION" class="w3-button w3-xxlarge w3-black" onclick="compruebayenvia();" /></p>
        </div>
    </header>

    <!-- Footer -->
    <footer class="w3-center w3-black w3-padding-48 w3-xxlarge">
        <p>FÚTBOL COMO ESTILO DE VIDA</p>
    </footer>

    <script>
// Tabbed Menu
function openMenu(evt, menuName) {
  var i, x, tablinks;
  x = document.getElementsByClassName("menu");
  for (i = 0; i < x.length; i++) {
     x[i].style.display = "none";
  }
  tablinks = document.getElementsByClassName("tablink");
  for (i = 0; i < x.length; i++) {
     tablinks[i].className = tablinks[i].className.replace(" w3-red", "");
  }
  document.getElementById(menuName).style.display = "block";
  evt.currentTarget.firstElementChild.className += " w3-red";
}
document.getElementById("myLink").click();
    </script>

</body>
</html>
