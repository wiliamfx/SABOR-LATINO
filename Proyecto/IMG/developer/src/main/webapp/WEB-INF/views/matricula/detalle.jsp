<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8"> 
    <title>Detalle de Matrícula</title>
    <link rel="stylesheet" href="<c:url value='/css/styles.css'/>">
</head>
<body>
    <div style="text-align: center;">
		<h3>¡Matricula - Detalle!</h3>
	
		<b>Matricula ID: </b>${matricula.matricula_id} <br>
		<b>ESTUDIANTE: </b>${matricula.estudiante} <br>
		<b>Curso: </b>${matricula.curso} <br>
		<b>Fecha de matricula: </b>${matricula.fechamatricula} <br>
		<b>semestre: </b>${matricula.semestre} <br><br>
		
		<a href="/idat/matricula/tabla">Volver</a>
	</div>
</body>
</html>
