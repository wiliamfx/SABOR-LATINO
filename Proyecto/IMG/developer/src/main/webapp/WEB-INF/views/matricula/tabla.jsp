<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8"> 
    <title>Listar Matrículas</title>
</head>
<body>
    <div align="center">
		<table>
			<caption style="line-height:30px;">¡Matricula - Listar!</caption>
			<tr>
				<th><b>Matricula_id</b></th>
				<th><b>estudiante</b></th>
				<th><b>curso</b></th>
				<th><b>Fecha_matricula</b></th>
				<th><b>semestre</b></th>
				
			</tr>
			 <c:if test="${empty baraja}">
                <tr>
                    <td colspan="7" style="text-align: center;">No hay matricula disponible.</td>
                </tr>
            </c:if>
			
			<c:forEach var="carta" items="${baraja}">
				<tr>
					<td>${carta.Matriculaid}</td>
					<td>${carta.estudiante}</td>
					<td>${carta.curso}</td>
					<td>${carta.fechamatricula}</td>
					<td>${carta.semestre}</td>
					<td>
						<a href="/idat/matricula/detalle/${carta.Matriculaid}">Detalle</a> | 
						<a href="/idat/matricula/editar/${carta.Matriculaid}">Editar</a> | 
						<a href="/idat/matricula/borrar/${carta.Matriculaid}">Borrar</a>
					</td>
				</tr>
			</c:forEach>
		</table> <br>
		
		<a href="/idat/index">Index</a> | 
		<a href="/idat/matricula/registrar">Registrar</a>
	</div>
    

</body>
</html>
