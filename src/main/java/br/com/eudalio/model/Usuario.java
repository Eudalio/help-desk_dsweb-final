package br.com.eudalio.model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;

@Entity(name="usuarios")
public class Usuario {
	

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	protected int id;
	
	@Size(max=11)
	protected String telefone;
	
	@NotNull
	@Size(min=5, message="O username deve ter no mínimo {min} caracteres")
	protected String username;
	
	@NotNull
	@Size(min=5, message="O senha deve ter no mínimo {min} caracteres")
	protected String senha;
	
	@NotNull
	protected String email;
	
	public Usuario() {}

	public Usuario(int id, String username, String senha) {
		this.id = id;
		this.username = username;
		this.senha = senha;
	}

	public Usuario(int id, String telefone, String username, String senha, String email) {
		this.id = id;
		this.telefone = telefone;
		this.username = username;
		this.senha = senha;
		this.email = email;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getTelefone() {
		return telefone;
	}

	public void setTelefone(String telefone) {
		this.telefone = telefone;
	}

	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public String getSenha() {
		return this.senha;
	}

	public void setSenha(String senha) {
		this.senha = senha;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}
	
}
