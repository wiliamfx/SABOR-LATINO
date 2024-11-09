package pe.web.repository;
import java.time.LocalDate;
import java.util.Collection;
import java.util.HashMap;
import java.util.Map;

import org.springframework.stereotype.Repository;

import pe.web.entity.Matricula;


@Repository
public class MatriculaRepositorylmpl implements MatriculaRepository 
{
    // Base de datos en memoria
    private static final Map<Integer, Matricula> matriculas = new HashMap<>();
    
    static {
        // Ejemplos de matrículas
        Matricula matricula1 = new Matricula(1001, "Juan Pérez", "Matemáticas", LocalDate.of(2024, 3, 15), 1);
        Matricula matricula2 = new Matricula(1002, "Ana García", "Historia", LocalDate.of(2024, 4, 22), 2);
        Matricula matricula3 = new Matricula(1003, "Luis Martínez", "Química", LocalDate.of(2024, 5, 10), 1);
        Matricula matricula4 = new Matricula(1004, "María López", "Biología", LocalDate.of(2024, 6, 5), 2);

        // Guardar matrículas
        matriculas.put(matricula1.getMatricula_id(), matricula1);
        matriculas.put(matricula2.getMatricula_id(), matricula2);
        matriculas.put(matricula3.getMatricula_id(), matricula3);
        matriculas.put(matricula4.getMatricula_id(), matricula4);
    }

    @Override
    public void insert(Matricula matricula) {
        Integer newID = matriculas.size() + 1001;
        matricula.setMatricula_id(newID);
        
        matriculas.put(matricula.getMatricula_id(), matricula);
    }

    @Override
    public void update(Matricula matricula) {
        matriculas.put(matricula.getMatricula_id(), matricula);
    }

    @Override
    public void delete(Integer matriculaid) {
        matriculas.remove(matriculaid);
    }

    @Override
    public Matricula findById(Integer matriculaid) {
        return matriculas.get(matriculaid);
    }

    @Override
    public Collection<Matricula> findAll() {
        return matriculas.values();
    }
}