package br.com.eudalio.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import br.com.eudalio.model.Usuario;

import br.com.eudalio.repository.UsuarioRepository;

@Service
@Transactional
public class UsuarioService {

	@Autowired
	private UsuarioRepository usuarioRepository;
	
	public Usuario findUserByUsername(String username) {
        return usuarioRepository.findByUsername(username);
    }
}
