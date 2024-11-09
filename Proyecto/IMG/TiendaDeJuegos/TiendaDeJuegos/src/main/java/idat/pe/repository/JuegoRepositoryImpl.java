package idat.pe.repository;

import java.util.Collection;
import java.util.HashMap;
import java.util.Map;

import org.springframework.stereotype.Repository;

import idat.pe.entity.Juego; // Importar la nueva clase Juego

@Repository
public class JuegoRepositoryImpl implements JuegoRepository {
    // Base de datos en memoria
    private static final Map<Integer, Juego> juegos = new HashMap<>();

    static {


        Juego juego5 = new Juego(105, "Free Fire", "Móvil", "Battle Royale", "Web", "Garena");
        Juego juego6 = new Juego(106, "Fortnite", "PC", "Battle Royale", "Web", "Epic Games");
        Juego juego7 = new Juego(107, "Among Us", "PC", "Multijugador", "Web", "Innersloth");
        Juego juego8 = new Juego(108, "GTA V", "PC", "Acción/Aventura", "Móvil", "Rockstar Games");
        Juego juego9 = new Juego(109, "Valorant", "PC", "Shooter", "Móvil", "Riot Games");
        Juego juego10 = new Juego(110, "Animal Crossing: New Horizons", "Nintendo Switch", "Simulación", "Web", "Nintendo");
        Juego juego11 = new Juego(111, "League of Legends", "PC", "MOBA", "Web", "Riot Games");
        Juego juego12 = new Juego(112, "The Witcher 3: Wild Hunt", "PC", "RPG", "Móvil", "CD Projekt Red");

        juegos.put(juego5.getId(), juego5);
        juegos.put(juego6.getId(), juego6);
        juegos.put(juego7.getId(), juego7);
        juegos.put(juego8.getId(), juego8);
        juegos.put(juego9.getId(), juego9);
        juegos.put(juego10.getId(), juego10);
        juegos.put(juego11.getId(), juego11);
        juegos.put(juego12.getId(), juego12);
    }

    @Override
    public void insert(Juego juego) {
        Integer newID = juegos.size() + 101; // Generar nuevo ID
        juego.setId(newID); // Establecer el nuevo ID

        juegos.put(juego.getId(), juego);
    }

    @Override
    public void update(Juego juego) {
        juegos.put(juego.getId(), juego);
    }

    @Override
    public void delete(Integer id) {
        juegos.remove(id);
    }

    @Override
    public Juego findById(Integer id) {
        return juegos.get(id);
    }

    @Override
    public Collection<Juego> findAll() {
        return juegos.values();
    }
}