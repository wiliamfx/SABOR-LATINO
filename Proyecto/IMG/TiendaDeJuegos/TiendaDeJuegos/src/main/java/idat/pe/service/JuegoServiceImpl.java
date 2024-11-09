package idat.pe.service;

import java.util.Collection;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;

import idat.pe.entity.Juego; // Importar la nueva clase Juego
import idat.pe.repository.JuegoRepository; // Importar el nuevo repositorio

@Service
public class JuegoServiceImpl implements JuegoService {
    @Autowired
    @Qualifier("juegoRepositoryImpl") // Actualizar el nombre del repositorio
    private JuegoRepository repository;

    @Override
    public void insert(Juego juego) {
        repository.insert(juego);
    }

    @Override
    public void update(Juego juego) {
        repository.update(juego);
    }

    @Override
    public void delete(Integer id) { // ID del juego a eliminar
        repository.delete(id);
    }

    @Override
    public Juego findById(Integer id) { // Buscar juego por ID
        return repository.findById(id);
    }

    @Override
    public Collection<Juego> findAll() {
        return repository.findAll();
    }
}