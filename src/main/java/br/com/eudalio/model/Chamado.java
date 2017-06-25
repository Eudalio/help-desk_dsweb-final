package br.com.eudalio.model;

import java.util.Date;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;

@Entity(name="chamados")
public class Chamado {
	
	@Id 
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int codigo;
	
	private Date data_inicio;
	private Date data_encerrado;
	
	@NotNull 
	@Size(min=5, max=300, message="A descrição deve ter entre {min} e {max} caracteres")
	private String descricao;
	
	private boolean status;
	
	public Chamado() {

	}
	
	public Chamado(int codigo){
		this.setCodigo(codigo);
	}
	
	public Chamado(int codigo, Date dt_inicio, Date dt_encerrado, Date hr_inicio, Date hr_encerrado, String descricao, String solucao, boolean key){
		setCodigo(codigo);
		setData_inicio(dt_inicio);
		setData_encerrado(dt_encerrado);
		setDescricao(descricao);
		setStatus(key);
	}
	
	
	public int getCodigo() {
		return codigo;
	}
	public void setCodigo(int codigo) {
		this.codigo = codigo;
	}
	public Date getData_inicio() {
		return data_inicio;
	}
	public void setData_inicio(Date data_inicio) {
		this.data_inicio = data_inicio;
	}
	public Date getData_encerrado() {
		return data_encerrado;
	}
	public void setData_encerrado(Date data_encerrado) {
		this.data_encerrado = data_encerrado;
	}
	
	public String getDescricao() {
		return descricao;
	}
	public void setDescricao(String descricao) {
		this.descricao = descricao;
	}

	public boolean getStatus() {
		return status;
	}

	public void setStatus(boolean status) {
		this.status = status;
	}

	
}
