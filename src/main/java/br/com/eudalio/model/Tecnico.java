package br.com.eudalio.model;

import javax.persistence.Entity;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;

@Entity(name="tecnicos")
public class Tecnico extends Usuario {
	
	@NotNull
	@Size(max=11, message="Deve ter exatamente {max} caracteres")
	private String cpf;
	
	public Tecnico() {}
	
	public Tecnico(int id, String username, String senha, String cpf){
		this.id = id;
		this.username = username;
		this.senha = senha;
		this.cpf = cpf;
	}
	
	public Tecnico(int id, String telefone, String username, String senha, String email, String cpf) {
		this.id = id;
		this.telefone = telefone;
		this.username = username;
		this.senha = senha;
		this.email = email;
		this.cpf = cpf;
	}

	public String getCpf() {
		return cpf;
	}

	public void setCpf(String cpf) {
		this.cpf = cpf;
	}
}
