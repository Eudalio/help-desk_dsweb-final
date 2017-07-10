package br.com.eudalio.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import br.com.eudalio.model.Usuario;

import br.com.eudalio.repository.UsuarioRepository;

public interface UsuarioService {
	
	Usuario findUserByUsername(String username);
	
	List<Usuario> getLista();
	
	void delete(Usuario usuario);
	
	void save(Usuario usuario);
	
	Usuario findById(Integer id);

}
