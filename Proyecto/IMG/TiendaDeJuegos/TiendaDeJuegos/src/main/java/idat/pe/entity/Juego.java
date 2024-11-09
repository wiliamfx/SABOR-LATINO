package idat.pe.entity;

// Clase
public class Juego {
    // Propiedades
    private Integer id; // ID de juego
    private String nombre; // Nombre del juego
    private String descripcion; // Descripción del juego
    private String categoria; // Categoría del juego
    private String plataforma; // Plataforma del juego
    private String empresa; // Empresa que creó el juego

    // Constructor sin propiedades
    public Juego() {}

    // Constructor con propiedades
    public Juego(Integer id, String nombre, String descripcion, String categoria, String plataforma, String empresa) {
        this.id = id;
        this.nombre = nombre;
        this.descripcion = descripcion;
        this.categoria = categoria;
        this.plataforma = plataforma;
        this.empresa = empresa;
    }

    // Encapsulamiento de las propiedades
    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public String getDescripcion() {
        return descripcion;
    }

    public void setDescripcion(String descripcion) {
        this.descripcion = descripcion;
    }

    public String getCategoria() {
        return categoria;
    }

    public void setCategoria(String categoria) {
        this.categoria = categoria;
    }

    public String getPlataforma() {
        return plataforma;
    }

    public void setPlataforma(String plataforma) {
        this.plataforma = plataforma;
    }

    public String getEmpresa() {
        return empresa;
    }

    public void setEmpresa(String empresa) {
        this.empresa = empresa;
    }
}