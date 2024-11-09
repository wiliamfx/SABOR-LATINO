package idat.pe.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

import idat.pe.service.JuegoService; // Importar la nueva clase JuegoService

// Controlador principal
@Controller
public class HomeController {
    // Servicio de juegos
    @Autowired
    @Qualifier("juegoServiceImpl") // Actualizar el nombre del servicio
    private JuegoService juegoService; // Cambiar a juegoService

    public HomeController() {}

    @GetMapping("/index")
    public String index_GET() {
        return "index"; // Retornar la vista index
    }
}