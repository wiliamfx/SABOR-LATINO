<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8"> 
    <title>Editar Matrícula</title>
    <link rel="stylesheet" href="<c:url value='/css/styles.css'/>"> <!-- Estilo CSS -->
</head>
<body>
    
    <div style="text-align: center;">
		<h3>¡Matricula - Editar!</h3>
	
		<!-- formulario Spring -->
		<form:form name="" method="POST" modelAttribute="matricula">
			Matricula ID: <form:input type="text" path="matriculaid" readonly="true"/> <br>
			
			Estudiante: <form:input type="text" path="estudiante" readonly="true"/> <br>
			curso: <form:input type="text" step="any" path="curso" readonly="true"/> <br>
			Fecha de matricula: <form:input type="date" path="fechamatricula" readonly="true"/> <br>
			semestre: <form:input type="number" path="semestre" readonly="true"/> <br><br>
			
			<button type="submit">Guardar</button>
			<button type="button" onclick="location.href='/idat/matricula/tabla'">Cancelar</button>
		</form:form>
	</div>
    
    
    
    
</body>
</html>
