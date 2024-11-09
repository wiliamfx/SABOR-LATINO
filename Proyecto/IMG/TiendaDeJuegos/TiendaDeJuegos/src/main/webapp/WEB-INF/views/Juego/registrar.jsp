<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!-- librería Spring Form -->
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Registrar Juego</title> <!-- Título de la página -->
    <style>
        body {
            font-family: 'Arial', sans-serif;
            background-color: #e3f2fd; /* Fondo azul claro */
            margin: 0;
            padding: 20px; /* Espaciado alrededor */
            display: flex;
            justify-content: center; /* Centrar horizontalmente */
            align-items: center; /* Centrar verticalmente */
            height: 100vh; /* Altura completa de la ventana */
        }

        .form-container {
            max-width: 500px;
            margin: 40px auto;
            padding: 30px; /* Padding dentro del contenedor */
            border-radius: 10px;
            background-color: #ffffff; /* Fondo blanco para el formulario */
            box-shadow: 0 4px 15px rgba(0, 0, 0, 0.2);
            text-align: center; /* Centrar texto dentro del contenedor */
        }

        h3 {
            color: #1976d2; /* Color azul */
            text-align: center;
            margin-bottom: 20px;
            font-size: 26px; /* Tamaño de la fuente */
        }

        .form-field {
            margin-bottom: 15px; /* Espaciado entre los campos del formulario */
        }

        label {
            display: block;
            margin-bottom: 5px;
            color: #333; /* Color gris oscuro */
        }

        input[type="text"] {
            width: 100%; /* Ancho completo */
            padding: 10px; /* Espaciado interno */
            border: 1px solid #b0bec5; /* Borde gris claro */
            border-radius: 5px; /* Bordes redondeados */
            font-size: 16px; /* Tamaño de la fuente */
            transition: border-color 0.3s; /* Transición para el color del borde */
        }

        input[type="text"]:focus {
            border-color: #1976d2; /* Color del borde al hacer foco */
            outline: none; /* Sin borde por defecto */
        }

        .button {
            width: 48%; /* Ancho de los botones */
            padding: 12px; /* Espaciado interno del botón */
            margin-top: 10px; /* Margen superior */
            border: none; /* Sin borde */
            border-radius: 5px; /* Bordes redondeados */
            font-size: 16px; /* Tamaño de la fuente */
            cursor: pointer; /* Cambiar cursor al pasar sobre el botón */
            transition: background-color 0.3s; /* Transición para el color de fondo */
        }

        button[type="submit"] {
            background-color: #4caf50; /* Fondo verde para el botón de guardar */
            color: white; /* Texto blanco */
        }

        button[type="button"] {
            background-color: #f44336; /* Fondo rojo para el botón de cancelar */
            color: white; /* Texto blanco */
        }

        button:hover {
            opacity: 0.9; /* Efecto de hover */
        }
    </style>
</head>
<body>
    <div class="form-container">
        <h3>¡Juego - Registrar!</h3> 

        <!-- formulario Spring -->
        <form:form method="POST" modelAttribute="juego"> 
            <div class="form-field">
                Titulo: <form:input type="text" path="nombre" required="true" />
            </div>
            <div class="form-field">
                Funcion: <form:input type="text" path="descripcion" required="true" /> 
            </div>
            <div class="form-field">
                Distribucion: <form:input type="text" path="categoria" required="true" /> 
            </div>
            <div class="form-field">
                Aplicativo: <form:input type="text" path="plataforma" required="true" /> 
            </div>
            <div class="form-field">
                Compañia: <form:input type="text" path="empresa" required="true" /> 
            </div>
            <br>
            <button type="submit" class="button">Guardar</button> <!-- Botón para guardar -->
            <button type="button" class="button" onclick="location.href='/idat/juego/listar'">Cancelar</button> <!-- Enlace para cancelar -->
        </form:form>
    </div>
</body>
</html>
