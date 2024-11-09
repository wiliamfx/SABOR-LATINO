package pe.web.service;
import java.util.Collection;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;

import pe.web.entity.Matricula;
import pe.web.repository.MatriculaRepository;

@Service

public class MatriculaServicelmpl implements MatriculaService  {
	@Autowired
    @Qualifier("matriculaRepositoryImpl")
    private MatriculaRepository repository;

    @Override
    public void insert(Matricula matricula) {
        repository.insert(matricula);		
    }

    @Override
    public void update(Matricula matricula) {
        repository.update(matricula);		
    }

    @Override
    public void delete(Integer matriculaid) {
        repository.delete(matriculaid);		
    }

    @Override
    public Matricula findById(Integer matriculaid) {
        return repository.findById(matriculaid);
    }

    @Override
    public Collection<Matricula> findAll() {
        return repository.findAll();
    }

}
