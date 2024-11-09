package idat.pe.service;

import java.util.Collection;
import idat.pe.entity.Juego; // Importar la nueva clase Juego

// Interfaz para los servicios de juegos
public interface JuegoService {
    // Se definen los servicios para los juegos
    public abstract void insert(Juego juego);
    public abstract void update(Juego juego);
    public abstract void delete(Integer id); // ID del juego a eliminar
    public abstract Juego findById(Integer id); // Buscar juego por ID
    public abstract Collection<Juego> findAll(); // Obtener todos los juegos
}
