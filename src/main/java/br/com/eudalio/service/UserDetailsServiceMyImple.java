package br.com.eudalio.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Service;

import br.com.eudalio.model.Usuario;

@Service
public class UserDetailsServiceMyImple implements UserDetailsService {

	@Autowired
	private UsuarioService usuarioService;
	
	@Override
	public UserDetails loadUserByUsername(String username) throws UsernameNotFoundException {
		Usuario usuario = usuarioService.findUserByUsername(username);
		if(usuario != null)
			return usuario;
		throw new UsernameNotFoundException("Login Inválido");
	}

}
