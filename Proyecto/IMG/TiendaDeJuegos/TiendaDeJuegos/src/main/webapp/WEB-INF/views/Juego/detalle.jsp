<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<link rel="stylesheet" href="<c:url value='/css/style3.css'/>"> 

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Detalle del Juego</title> <!-- Título de la página -->
    <style>
        body {
            font-family: 'Arial', sans-serif;
            background-color: rgba(128, 128, 128, 0.7); /* Fondo plomo transparente */
            margin: 0;
            padding: 20px;
        }

        .detail-container {
            max-width: 600px;
            margin: 40px auto;
            padding: 30px; /* Aumentar el padding */
            border-radius: 10px;
            background-color: #ffffff; /* Color de fondo blanco */
            box-shadow: 0 4px 15px rgba(0, 0, 0, 0.1);
            text-align: center;
        }

        h3 {
            color: #388e3c;
            text-align: center;
            margin-bottom: 20px;
            font-size: 26px;
            font-weight: bold; /* Negrita */
        }

        b {
            color: #333;
            font-size: 18px;
            font-weight: bold; /* Negrita */
        }

        a {
            display: inline-block;
            margin-top: 20px;
            padding: 10px 20px;
            background-color: #4caf50;
            color: white;
            border-radius: 5px;
            text-decoration: none;
            transition: background-color 0.3s;
            font-weight: bold; /* Negrita */
        }

        a:hover {
            background-color: #388e3c;
        }
    </style>
</head>
<body>
    <div class="detail-container">
        <h3>¡Juego - Detalle!</h3> <!-- Título de la sección -->
        
        <b>ID: </b>${juego.id} <br> <!-- ID del juego -->
        <b>Titulo: </b>${juego.nombre} <br> <!-- Nombre del juego -->
        <b>Funcion: </b>${juego.descripcion} <br> <!-- Descripción del juego -->
        <b>Destribucion: </b>${juego.categoria} <br> <!-- Categoría del juego -->
        <b>Aplicativo: </b>${juego.plataforma} <br> <!-- Plataforma del juego -->
        <b>Accion: </b>${juego.empresa} <br> <!-- Empresa que creó el juego -->
        
        <a href="/idat/juego/listar">Volver</a> <!-- Enlace para volver a la lista -->
    </div>
</body>
</html>
