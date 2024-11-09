package pe.web.repository;
import java.util.Collection;
import pe.web.entity.Matricula;

public interface MatriculaRepository {
	public abstract void insert(Matricula matricula);
	public abstract void update(Matricula matricula);
	public abstract void delete(Integer matriculaid);
	public abstract Matricula findById(Integer matriculaid);
	public abstract Collection<Matricula> findAll();

}
