package br.com.eudalio.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import br.com.eudalio.model.Usuario;
import br.com.eudalio.repository.UsuarioRepository;

@Service
public class UsuarioServiceImpl implements UsuarioService {
	
	@Autowired
	private UsuarioRepository usuarioRepository;
	
	@Override
	public Usuario findUserByUsername(String username) {
		return usuarioRepository.findByUsername(username);
	}

	@Override
	public List<Usuario> getLista() {
		return usuarioRepository.findAll();
	}

	@Override
	public void delete(Usuario usuario) {
		usuarioRepository.delete(usuario.getId());
		
	}

	@Override
	public void save(Usuario usuario) {
		usuarioRepository.save(usuario);
	}

	@Override
	public Usuario findById(Integer id) {
		return usuarioRepository.findOne(id);
	}

}
