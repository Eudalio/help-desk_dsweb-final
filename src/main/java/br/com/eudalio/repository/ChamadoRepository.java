package br.com.eudalio.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import br.com.eudalio.model.Chamado;

public interface ChamadoRepository extends JpaRepository<Chamado, Integer>{
	
}
