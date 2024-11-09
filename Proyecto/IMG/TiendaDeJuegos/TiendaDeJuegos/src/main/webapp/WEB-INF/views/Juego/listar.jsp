<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!-- Librería JSTL core -->
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Juegos Disponibles para Web y Movil!</title>
    <style>
        /* Estilos básicos */
        body {
            font-family: Arial, sans-serif;
            background-color: #f7f9fc;
            color: #333;
            display: flex;
            justify-content: center;
            padding: 20px;
        }

        table {
            border-collapse: collapse;
            width: 100%; /* Ajuste del ancho al 100% */
            max-width: 1200px; /* Ancho máximo opcional para una mejor presentación */
            background-color: #ffffff;
            box-shadow: 0px 0px 10px rgba(0, 0, 0, 0.1);
        }

        caption {
            font-size: 1.5em;
            font-weight: bold;
            padding: 10px;
            color: #4a90e2;
        }

        th, td {
            padding: 12px;
            text-align: left;
            border-bottom: 1px solid #ddd;
            transition: transform 0.2s; /* Efecto de transición para movimiento */
        }

        th {
            background-color: #4a90e2;
            color: #ffffff;
        }

        tr:nth-child(even) {
            background-color: #f2f2f2;
        }

        /* Efecto de movimiento al pasar sobre la celda */
        td:hover {
            transform: scale(1.03); /* Escala ligeramente al pasar el cursor */
            background-color: #e1ecf8;
        }

        .button {
            color: #4a90e2;
            text-decoration: none;
            font-weight: bold;
            padding: 5px 10px;
            border-radius: 5px;
            transition: background-color 0.3s;
        }

        .button:hover {
            background-color: #e1ecf8;
        }

        /* Enlaces al final */
        .nav-links {
            margin-top: 15px;
            font-size: 0.9em;
        }

        .nav-links a {
            color: #4a90e2;
            text-decoration: none;
            margin: 0 10px;
            padding: 5px 10px;
        }

        .nav-links a:hover {
            text-decoration: underline;
            background-color: #e1ecf8;
            border-radius: 4px;
        }
    </style>
</head>
<body>
    <div>
        <table>
            <caption>Juegos Disponibles para Web y Movil!</caption>
            <tr>
                <th>ID</th>
                <th>Titulo</th>
                <th>Funcion</th>
                <th>Distribucion</th>
                <th>Aplicativo</th>
                <th>Compañia</th>
                <th>Acción</th>
               
        
            </tr>
            
            <c:if test="${empty baraja}">
                <tr>
                    <td colspan="7" style="text-align: center;">No hay juegos disponibles.</td>
                </tr>
            </c:if>
            
            <c:forEach var="juego" items="${baraja}">
                <tr>
                    <td>${juego.id}</td>
                    <td>${juego.nombre}</td>
                    <td>${juego.descripcion}</td>
                    <td>${juego.categoria}</td>
                    <td>${juego.plataforma}</td>
                    <td>${juego.empresa}</td>
                    <td>
                        <a href="/idat/juego/detalle/${juego.id}" class="button">Detalle</a> |
                        <a href="/idat/juego/editar/${juego.id}" class="button">Editar</a> |
                        <a href="/idat/juego/borrar/${juego.id}" class="button">Borrar</a>
                    </td>
                </tr>
            </c:forEach>
        </table>
        
        <div class="nav-links">
            <a href="/idat/index">Index</a> | 
            <a href="/idat/juego/registrar">Registrar</a>
        </div>
    </div>
</body>
</html>
