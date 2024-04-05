<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
	<meta charset="ISO-8859-1">
	<title>Resultados</title>
	<link rel="stylesheet" href="css/styles.css">
</head>
<body>
	<h1>Información enviada</h1>
	<div class="main">
		<div class="main-left">
			<p>Nombre:</p>
			<p>Ubicación del Dojo:</p>
			<p>Lenguaje Favorito:</p>
			<p>Comentario:</p>
		</div>
		<div class="main-rigth">
			<p><c:out value="${nombre}"/></p>
			<p><c:out value="${dojo}"/></p>
			<p><c:out value="${lenguaje}"/></p>
			<p><c:out value="${comentario}"/></p>
		</div>
	</div>
	<form action="/" method="GET">
		<button>
			Pagina anterior
		</button>
	</form>
</body>
</html>