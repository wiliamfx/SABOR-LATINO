<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8"> 
    <title>Registrar Matrícula</title>
    <link rel="stylesheet" href="<c:url value='/css/styles.css'/>">
</head>
<body>
    <div style="text-align: center;">
		<h3>¡matricula - Registrar!</h3>
	
		<!-- formulario Spring -->
		<form:form  method="POST" modelAttribute="matricula">
			Estudiante: <form:input type="text" path="estudiante"/> <br>
			curso: <form:input type="text" step="any" path="curso"/> <br>
			Fecha de matricula: <form:input type="date" path="fechamatricula"/> <br>
			semestre: <form:input type="number" path="semestre"/> <br><br>
			
			<button type="submit">Guardar</button>
			<button type="button" onclick="location.href='/idat/matricula/tabla'">Cancelar</button>
		</form:form>
	</div>
    
    
    
    
    
    
</body>
</html>
