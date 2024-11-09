package idat.pe.controller;

import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import idat.pe.entity.Juego; // Cambiado a Juego
import idat.pe.service.JuegoService; // Cambiado a JuegoService

// Controlador para los juegos
@Controller
@RequestMapping("/juego") // Cambiado a juego
public class JuegoController {
    // Servicio de juegos
    @Autowired
    @Qualifier("juegoServiceImpl") // Cambiado a juegoServiceImpl
    private JuegoService juegoService; // Cambiado a juegoService
    
    public JuegoController() {}

    @GetMapping("/listar")
    public String listar_GET(Map<String, Object> map) {
        // Llave-valor
        map.put("baraja", juegoService.findAll()); // Cambiado a juegoService
        
        return "Juego/listar"; // Cambiado a juego
    }

    @GetMapping("/registrar")
    public String registrar_GET(Model model) {
        Juego juegoNull = new Juego(); // Cambiado a Juego
        model.addAttribute("juego", juegoNull); // Cambiado a juego
        
        return "Juego/registrar"; // Cambiado a juego
    }

    @PostMapping("/registrar")
    public String registrar_POST(Juego juego) { // Cambiado a Juego
        // Guardar en base de datos
        juegoService.insert(juego); // Cambiado a juegoService
        
        // Redireccionar
        return "redirect:/juego/listar"; // Cambiado a juego
    }

    @GetMapping("/editar/{juego_id}") // Cambiado a juego_id
    public String editar_GET(Model model, @PathVariable Integer juego_id) { // Cambiado a juego_id
        Juego juegoLoad = juegoService.findById(juego_id); // Cambiado a Juego
        model.addAttribute("juego", juegoLoad); // Cambiado a juego
        
        return "Juego/editar"; // Cambiado a juego
    }

    @PostMapping("/editar/{juego_id}") // Cambiado a juego_id
    public String editar_POST(Juego juego) { // Cambiado a Juego
        // Actualizar en base de datos
        juegoService.update(juego); // Cambiado a juegoService
        
        // Redireccionar
        return "redirect:/juego/listar"; // Cambiado a juego
    }

    @GetMapping("/borrar/{juego_id}") // Cambiado a juego_id
    public String borrar_GET(Model model, @PathVariable Integer juego_id) { // Cambiado a juego_id
        Juego juegoLoad = juegoService.findById(juego_id); // Cambiado a Juego
        model.addAttribute("juego", juegoLoad); // Cambiado a juego
        
        return "Juego/borrar"; // Cambiado a juego
    }

    @PostMapping("/borrar/{juego_id}") // Cambiado a juego_id
    public String borrar_POST(Juego juego) { // Cambiado a Juego
        // Eliminar en base de datos
        juegoService.delete(juego.getId()); // Cambiado a juego
        
        // Redireccionar
        return "redirect:/juego/listar"; // Cambiado a juego
    }

    @GetMapping("/detalle/{juego_id}") // Cambiado a juego_id
    public String detalle_GET(Model model, @PathVariable Integer juego_id) { // Cambiado a juego_id
        Juego juegoLoad = juegoService.findById(juego_id); // Cambiado a Juego
        model.addAttribute("juego", juegoLoad); // Cambiado a juego
        
        return "Juego/detalle"; // Cambiado a juego
    }
}