<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8"> 
    <title>Borrar Matrícula</title>
    <link rel="stylesheet" href="<c:url value='/css/styles.css'/>">
</head>
<body>
    <div style="text-align: center;">
		<h3>¡Matricula - Borrar!</h3>
	
		<!-- formulario Spring -->
		<form:form name="" method="POST" modelAttribute="matricula">
			matricula_id: <form:input type="text" path="matriculaid" readonly="true"/> <br>
			estudiante: <form:input type="text" path="estudiante" readonly="true"/> <br>
			
			<p style="color: red;">¿Está seguro de borrar?</p>
			
			<button type="submit">Si, borrar</button>
			<button type="button" onclick="location.href='/idat/matricula/tabla'">Cancelar</button>
		</form:form>
	</div>
</body>
</html>
