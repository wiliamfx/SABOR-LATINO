package pe.web.entity;

import java.time.LocalDate;
import org.springframework.format.annotation.DateTimeFormat;
import org.springframework.format.annotation.DateTimeFormat.ISO;

public class Matricula {
	
	private Integer matriculaid;
    private String estudiante;
    private String curso;
    
    @DateTimeFormat(pattern="yyyy-MM-dd",iso=ISO.DATE)
	private LocalDate fechamatricula;
    
    private Integer semestre;
    
    // Constructor sin propiedades
    public Matricula() {}

    // Constructor con propiedades
    public Matricula(Integer matriculaid, String estudiante, String curso, LocalDate fechamatricula, Integer semestre) {
        this.matriculaid = matriculaid;
        this.estudiante = estudiante;
        this.curso = curso;
        this.fechamatricula = fechamatricula;
        this.semestre = semestre;
    }

    // Encapsulamiento de las propiedades
    public Integer getMatricula_id() {
        return matriculaid;
    }

    public void setMatricula_id(Integer matriculaid) {
        this.matriculaid = matriculaid;
    }

    public String getEstudiante() {
        return estudiante;
    }

    public void setEstudiante(String estudiante) {
        this.estudiante = estudiante;
    }

    public String getCurso() {
        return curso;
    }

    public void setCurso(String curso) {
        this.curso = curso;
    }

    public LocalDate getFecha_matricula() {
        return fechamatricula;
    }

    public void setFecha_matricula(LocalDate fechamatricula) {
        this.fechamatricula = fechamatricula;
    }

    public Integer getSemestre() {
        return semestre;
    }

    public void setSemestre(Integer semestre) {
        this.semestre = semestre;
    }
}
