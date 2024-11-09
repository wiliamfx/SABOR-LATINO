<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!-- librería Spring Form -->
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Editar Juego</title> <!-- Título de la página -->
    <style>
        body {
            font-family: 'Arial', sans-serif;
            background-color: rgba(128, 128, 128, 0.7); /* Fondo plomo transparente */
            margin: 0;
            padding: 20px;
        }

        .form-container {
            max-width: 500px;
            margin: 40px auto;
            padding: 30px; /* Aumentar el padding */
            border: 1px solid #90caf9;
            border-radius: 10px;
            background-color: #dcedc8; /* Color de fondo verde claro */
            box-shadow: 0 4px 15px rgba(0, 0, 0, 0.1);
        }

        h3 {
            text-align: center;
            color: #1976d2;
            margin-bottom: 20px;
            font-weight: bold; /* Negrita */
        }

        label {
            display: block;
            margin: 10px 0 5px;
            color: #424242;
            font-weight: bold; /* Negrita */
        }

        input[type="text"] {
            width: calc(100% - 20px);
            padding: 10px;
            margin-bottom: 15px;
            border: 1px solid #90caf9;
            border-radius: 4px;
            font-size: 16px;
            font-weight: bold; /* Negrita */
        }

        button {
            width: 48%;
            padding: 10px;
            margin-top: 10px;
            border: none;
            border-radius: 4px;
            font-size: 16px;
            cursor: pointer;
            transition: background-color 0.3s;
            font-weight: bold; /* Negrita */
        }

        button[type="submit"] {
            background-color: #4caf50; /* Color verde */
            color: white;
        }

        button[type="button"] {
            background-color: #f44336; /* Color rojo */
            color: white;
        }

        button:hover {
            opacity: 0.8;
        }
    </style>
</head>
<body>
    <div class="form-container">
        <h3>¡Juego - Editar!</h3> <!-- Título de la sección -->
        
        <!-- formulario Spring -->
        <form:form method="POST" modelAttribute="juego"> <!-- Modelo para el juego -->
            <div>
                ID: <form:input type="text" path="id" readonly="true" /> <br>
                Nombre: <form:input type="text" path="nombre" required="true" /> <br>
                Descripción: <form:input type="text" path="descripcion" required="true" /> <br>
                Categoría: <form:input type="text" path="categoria" required="true" /> <br>
                Plataforma: <form:input type="text" path="plataforma" required="true" /> <br>
                Empresa: <form:input type="text" path="empresa" required="true" /> <br><br>
            </div>
            
            <button type="submit">Actualizar</button>
            <button type="button" onclick="location.href='/idat/juego/listar'">Cancelar</button> <!-- Botón para cancelar -->
        </form:form>
    </div>
</body>
</html>
