package br.com.eudalio.model;

import javax.persistence.Entity;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;

@Entity(name="admin")
public class Admin extends Usuario implements UsuarioAutenticavel{
	
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	@NotNull
	@Size(max=11, message="Campo cpf deve ter exatamente {max} caracteres")
	private String cpf;

	private String nome;
	
	public Admin(){ }
	
	public Admin(String nome, String telefone, String username, String senha, String cpf, String email, TipoUsuario tipo){
		this.nome = nome;
		this.telefone = telefone;
		this.username = username;
		this.senha = senha;
		this.cpf = cpf;
		this.email = email;
		this.tipo = tipo;
	}
	
	public Admin(int id, String telefone, String username, String senha, String email, String cpf, TipoUsuario tipo){
		this.id = id;
		this.telefone = telefone;
		this.username = username;
		this.senha = senha;
		this.email = email;
		this.cpf = cpf;
		this.tipo = tipo;
	}
	public String getCpf() {
		return cpf;
	}

	public void setCpf(String cpf) {
		this.cpf = cpf;
	}

	public String getNome() {
		return nome;
	}

	public void setNome(String nome) {
		this.nome = nome;
	}

	@Override
	public boolean autentica(String username, String senha) {
		if(this.getSenha() == senha && this.getUsername() == username && username != null && senha != null)
			return true;
		return false;
	}
	
}
