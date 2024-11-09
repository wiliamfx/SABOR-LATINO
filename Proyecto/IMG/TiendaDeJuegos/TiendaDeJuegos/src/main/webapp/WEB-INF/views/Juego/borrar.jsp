<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Borrar Juego</title>
    <style>
        body {
            font-family: 'Arial', sans-serif;
            background-color: rgba(128, 128, 128, 0.7); /* Fondo gris plomo transparente */
            margin: 0;
            padding: 0;
            display: flex;
            justify-content: center; /* Centrar verticalmente */
            align-items: center; /* Centrar horizontalmente */
            height: 100vh; /* Ocupa toda la altura de la ventana */
        }

        .form-container {
            width: 300px; /* Ancho del formulario */
            padding: 30px; /* Aumentar padding */
            border-radius: 8px; /* Bordes redondeados */
            background-color: #c8e6c9; /* Fondo verde claro bonito */
            box-shadow: 0 2px 10px rgba(0, 0, 0, 0.1); /* Sombra sutil */
            text-align: center; /* Centrar texto */
        }

        h3 {
            color: black; /* Color negro */
            margin-bottom: 20px;
            font-size: 20px; /* Tamaño de fuente */
            font-weight: bold; /* Negrita */
        }

        label {
            display: block;
            margin-bottom: 5px;
            color: black; /* Color negro */
            font-size: 14px; /* Tamaño de fuente */
            font-weight: bold; /* Negrita */
        }

        input[type="text"] {
            width: 100%; /* Ancho completo */
            padding: 8px; /* Espaciado interno */
            margin-bottom: 15px; /* Espaciado inferior */
            border: 1px solid #ccc; /* Bordes suaves */
            border-radius: 4px; /* Bordes redondeados */
            font-size: 14px; /* Tamaño de fuente */
            font-weight: bold; /* Negrita */
            color: black; /* Color de texto negro */
        }

        input[type="text"]:focus {
            border-color: #e53935; /* Color de borde al hacer foco */
            outline: none; /* Sin borde por defecto */
        }

        button {
            width: 45%; /* Ancho de los botones */
            padding: 12px; /* Aumentar espaciado interno */
            border: none; /* Sin borde */
            border-radius: 4px; /* Bordes redondeados */
            font-size: 14px; /* Tamaño de fuente */
            cursor: pointer; /* Cambiar cursor al pasar sobre el botón */
            margin: 5px; /* Espaciado entre botones */
            font-weight: bold; /* Negrita */
            color: white; /* Texto blanco */
        }

        button[type="submit"] {
            background-color: green; /* Fondo naranja para el botón de borrar */
        }

        button[type="button"] {
            background-color: red; 
            
        }

        button:hover {
            opacity: 0.9; /* Efecto de hover */
        }

        p {
            color: black; /* Color negro */
            font-weight: bold; /* Negrita */
        }
    </style>
</head>
<body>
    <div class="form-container">
        <h3>¡Juego - Borrar!</h3> <!-- Título de la sección -->
        
        <!-- formulario Spring -->
        <form:form method="POST" modelAttribute="juego"> <!-- Modelo de juego -->
            ID: <form:input type="text" path="id" readonly="true" /> <br> <!-- ID del juego -->
            Titulo: <form:input type="text" path="nombre" readonly="true" /> <br> <!-- Nombre del juego -->
            Funcion: <form:input type="text" path="descripcion" readonly="true" /> <br> <!-- Descripción del juego -->
            Distribucion: <form:input type="text" path="categoria" readonly="true" /> <br> <!-- Categoría del juego -->
            Aplicativo: <form:input type="text" path="plataforma" readonly="true" /> <br> <!-- Plataforma del juego -->
            Compañia: <form:input type="text" path="empresa" readonly="true" /> <br> <!-- Empresa que creó el juego -->
            
            <p>¿Está seguro de borrar?</p> <!-- Mensaje de confirmación -->
  
            <button type="submit">Sí, borrar</button> <!-- Botón para confirmar el borrado -->
            <button type="button" onclick="location.href='/idat/juego/listar'">Cancelar</button> <!-- Enlace para cancelar -->
        </form:form>
    </div>
</body>
</html>
