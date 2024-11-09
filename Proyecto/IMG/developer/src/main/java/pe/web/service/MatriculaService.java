package pe.web.service;
import java.util.Collection;

import pe.web.entity.Matricula;



public interface MatriculaService {
	public abstract void insert(Matricula matricula);
	public abstract void update(Matricula matricula);
	public abstract void delete(Integer matriculaid);
	public abstract Matricula findById(Integer matricuylaid);
	public abstract Collection<Matricula> findAll();

}
