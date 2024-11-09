package pe.web.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

import pe.web.service.MatriculaService;

@Controller
public class HomeController {

    @Autowired
    @Qualifier("matriculaServiceImpl")
    private MatriculaService matriculaService;

    // Constructor vacío
    public HomeController() {}

    // Mapeo para la página de inicio
    @GetMapping("/index")
    public String index_GET() {
        return "index"; 
    }
}
