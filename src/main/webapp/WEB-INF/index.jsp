<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="ISO-8859-1">
	<title>index</title>
	<link rel="stylesheet" href="css/styles.css">
</head>
<body>
	<form action="/mostrarResultados" method="POST">
		<p><label for="nombre">Su nombre es: </label><input type="text" id="nombre" name="nombre"></p>
		<p>Ubiacion de su Dojo:  <select name="dojo">
			<option value="chile">Chile</option>
			<option value="mexico">Mexico</option>
			<option value="Estados Unidos">USA</option>
		</select></p>
		<p>Su lenguaje favorito es: <select name="lenguaje">
			<option value="Java">Java</option>
			<option value="Rust">Rust</option>
			<option value="Python">Python</option>
			<option value="C++">C++</option>
		</select></p>
		<p>Comment (opcional): </p>
		<input type="text" id="comentario" name="comentario">
		<button>
			Button
		</button>
	</form>
</body>
</html>