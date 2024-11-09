<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <title>Bienvenida - Tienda de Juegos</title>
    <link rel="stylesheet" type="text/css" href="css/styles.css"> 
    <style>
    
    	/* Reset básico */
* {
    margin: 0;
    padding: 0;
    box-sizing: border-box;
}

body {
    font-family: Arial, sans-serif;
    color: #333;
    background-color: #f4f4f4;
}

.header {
    background-image: url('images/header-background.jpg');
    background-size: cover;
    background-position: center;
    height: 300px;
    color: #fff;
    display: flex;
    align-items: center;
    justify-content: center;
    text-align: center;
}

.header-content {
    background-color: rgba(0, 0, 0, 0.6);
    padding: 20px;
    border-radius: 8px;
}

.header h1 {
    font-size: 2.5em;
    margin-bottom: 10px;
}

.header p {
    font-size: 1.2em;
    margin-bottom: 15px;
}

.btn {
    display: inline-block;
    background-color: #ff8c00;
    color: #fff;
    padding: 10px 20px;
    text-decoration: none;
    font-weight: bold;
    border-radius: 5px;
    transition: transform 0.3s;
}

.btn:hover {
    transform: scale(1.1);
    background-color: #ff6700;
}

.container {
    max-width: 800px;
    margin: 20px auto;
    padding: 20px;
    text-align: center;
}

footer {
    margin-top: 20px;
    font-size: 0.9em;
    color: #666;
    text-align: center;
    padding: 10px 0;
}

footer a {
    color: #333;
    text-decoration: none;
    margin: 0 5px;
}

footer a:hover {
    text-decoration: underline;
}

.ia {
    display: block;
    margin: 20px auto;
    width: 900px;
    transition: transform 0.3s;
}

.ia:hover {
    transform: scale(1.05);
}

.center-btn {
    text-align: center;
    margin-top: 10px;
}
    	
    </style>
</head>
<body>
    <header class="header">
        <div class="header-content">
            <h1>¡Bienvenido a la Tienda de Juegos!</h1>
            <p>Descubre los mejores juegos para todas las plataformas y vive experiencias inolvidables.</p>
        </div>
    </header>
    
    <img class="ia" src="https://e.rpp-noticias.io/xlarge/2020/05/23/085408_946319.jpg">
    <div class="center-btn">
        <a href="/idat/juego/listar" class="btn">Ver Juegos</a>
    </div>

    <div class="container">
        <h3>Explora y Disfruta</h3>
        <p>En nuestra tienda encontrarás una amplia selección de juegos para todos los gustos. Desde los títulos más populares hasta los lanzamientos más esperados. ¡Sumérgete en tu próxima aventura!</p>
    </div>

    <footer>
        <p>&copy; 2024 Tienda de Juegos. Todos los derechos reservados.</p>
        <a href="/idat/contacto">Contacto</a> | 
        <a href="/idat/terminos">Términos de Uso</a> | 
        <a href="/idat/politica-privacidad">Política de Privacidad</a>
    </footer>
</body>
</html>
