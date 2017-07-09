package br.com.eudalio.model;

import javax.persistence.Entity;

@Entity(name="clientes")
public class Cliente extends Usuario implements UsuarioAutenticavel {
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	private String cnpj;
	
	private String nome_empresa;
	
	private String contrato;
	
	private String endereco;
	
	private String cep;
	
	public Cliente(){}
	
	public Cliente(String nome_empresa, String telefone, String username, String senha, String cnpj, String email, TipoUsuario tipo, String contrato, String endereco, String cep){
		this.nome_empresa = nome_empresa;
		this.telefone = telefone;
		this.username = username;
		this.senha = senha;
		this.cnpj = cnpj;
		this.contrato = contrato;
		this.endereco = endereco;
		this.cep = cep;
		this.email = email;
		this.tipo = tipo;
	}
	
	public Cliente(int id, String nome_empresa, String telefone, String username, String senha, String cnpj, String contrato, String endereco, String cep, String email, TipoUsuario tipo){
		this.id = id;
		this.nome_empresa = nome_empresa;
		this.telefone = telefone;
		this.username = username;
		this.senha = senha;
		this.cnpj = cnpj;
		this.contrato = contrato;
		this.endereco = endereco;
		this.cep = cep;
		this.email = email;
		this.tipo = tipo;
	}

	public String getCnpj() {
		return cnpj;
	}

	public void setCnpj(String cnpj) {
		this.cnpj = cnpj;
	}

	public String getNome_empresa() {
		return nome_empresa;
	}

	public void setNome_empresa(String nome_empresa) {
		this.nome_empresa = nome_empresa;
	}

	public String getContrato() {
		return contrato;
	}

	public void setContrato(String contrato) {
		this.contrato = contrato;
	}

	public String getEndereco() {
		return endereco;
	}

	public void setEndereco(String endereco) {
		this.endereco = endereco;
	}

	public String getCep() {
		return cep;
	}

	public void setCep(String cep) {
		this.cep = cep;
	}

	@Override
	public boolean autentica(String username, String senha) {
		if(this.getSenha() == senha && this.getUsername() == username && username != null && senha != null)
			return true;
		return false;
	}
}
