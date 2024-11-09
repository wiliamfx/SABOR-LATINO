package pe.web.controller;

import java.util.Collection;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import pe.web.entity.Matricula; // Importa la entidad Matricula
import pe.web.service.MatriculaService; // Importa el servicio MatriculaService

// MESERO
@Controller
@RequestMapping("/matricula") // Cambiado de "/producto" a "/matricula"
public class MatriculaController 
{
	
    // CARTA
    @Autowired
    @Qualifier("matriculaServicelmpl") // Cambiado de productoServiceImpl a matriculaServiceImpl
    private MatriculaService matriculaService; // Cambiado de ProductoService a MatriculaService

    public MatriculaController() {}

    @GetMapping("/tabla")
    public String tabla_GET(Map<String, Collection<?>> map) {
        map.put("baraja", matriculaService.findAll());
        return "Matricula/tabla"; // Asegúrate de que esta vista exista
    }
    @GetMapping("/registrar")
    public String registrar_GET(Model model) {
        Matricula matriculaNull = new Matricula();
        model.addAttribute("matricula", matriculaNull);
        return "Matricula/registrar"; // Asegúrate que esta vista exista
    }

    @PostMapping("/registrar")
    public String registrar_POST(@ModelAttribute Matricula matricula) {
        matriculaService.insert(matricula);
        return "redirect:/matricula/tabla"; // Redirecciona a la tabla después de guardar
    }

    @GetMapping("/editar/{matriculaid}")
    public String editar_GET(Model model, @PathVariable Integer matriculaid) {
        Matricula matriculaLoad = matriculaService.findById(matriculaid);
        model.addAttribute("matricula", matriculaLoad);
        return "Matricula/editar"; // Asegúrate que esta vista exista
    }

    @PostMapping("/editar/{matriculaid}")
    public String editar_POST(@ModelAttribute Matricula matricula) {
        matriculaService.update(matricula);
        return "redirect:/matricula/tabla"; // Redirecciona a la tabla después de actualizar
    }
    
    @GetMapping("/borrar/{matriculaid}")
    public String borrar_GET(Model model, @PathVariable Integer matriculaid) {
        Matricula matriculaLoad = matriculaService.findById(matriculaid); 
        model.addAttribute("matricula", matriculaLoad); 
        return "Matricula/borrar"; 
    }

    @PostMapping("/borrar/{matricula_id}")
    public String borrar_POST(@ModelAttribute Matricula matricula) {
        matriculaService.delete(matricula.getMatricula_id()); 
        return "redirect:/matricula/tabla";
    }

    @GetMapping("/detalle/{matricula_id}")
    public String detalle_GET(Model model, @PathVariable Integer matriculaid) {
        Matricula matriculaLoad = matriculaService.findById(matriculaid); 
        model.addAttribute("matricula", matriculaLoad); 
        return "Matricula/detalle"; 
    }
}
