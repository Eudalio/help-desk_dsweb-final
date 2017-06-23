package br.com.eudalio.model;

public enum TipoUsuario {
	CLIENTE ("cliente"),
	ADMINISRADOR ("admin"),
	TECNICO ("tecnico");
	
	private String value;
	
	private TipoUsuario(String value){
		this.setValue(value);
	}

	public String getValue() {
		return value;
	}

	public void setValue(String value) {
		this.value = value;
	}
	
	
}
