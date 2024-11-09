package idat.pe.repository;

import java.util.Collection;
import idat.pe.entity.Juego; // Importar la nueva clase Juego

// Interfaz para el repositorio de juegos
public interface JuegoRepository {
    // Se definen las operaciones a la BD
    public abstract void insert(Juego juego);
    public abstract void update(Juego juego);
    public abstract void delete(Integer id); // ID del juego a eliminar
    public abstract Juego findById(Integer id); // Buscar juego por ID
    public abstract Collection<Juego> findAll(); // Obtener todos los juegos
}