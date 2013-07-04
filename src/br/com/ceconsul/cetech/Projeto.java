package br.com.ceconsul.cetech;

public class Projeto {
	
	
	private int numero;
	private String nome;
	private String dataInicio;
	private String dataConclusao;
	private String statusDoProjeto;
	private String matriculaFuncionario;	
	
	public Projeto(){
		this.statusDoProjeto = "Em Andamento";
	}
	
	
	public int getNumero() {
		return numero;
	}
	
	public void setNumero(String numero){
		this.numero = Integer.parseInt(numero);
	}
	
	public void setNumero(int numero) {
		this.numero = numero;
	}
	public String getNome() {
		return nome;
	}
	public void setNome(String nome) {
		this.nome = nome;
	}
	public String getDataInicio() {
		return dataInicio;
	}
	public void setDataInicio(String dataInicio) {
		this.dataInicio = dataInicio;
	}
	public String getDataConclusao() {
		return dataConclusao;
	}
	public void setDataConclusao(String dataConclusao) {
		this.dataConclusao = dataConclusao;
	}	
	
	public String getStatusDoProjeto() {
		return statusDoProjeto;
	}

	public void setStatusDoProjeto(String statusDoProjeto) {
		this.statusDoProjeto = statusDoProjeto;
	}
	
	public String getMatriculaFuncionario() {
		return matriculaFuncionario;
	}

	public void setMatriculaFuncionario(String matriculaFuncionario) {
		this.matriculaFuncionario = matriculaFuncionario;
	}


	public String toString() {
		return "----------------------------------------------------------\n"
				+ "Nº " + this.numero + "   " + this.nome.toUpperCase() + "  Funcionario(" + 
				this.matriculaFuncionario + ")" 
				+ "\t  Data inicio: " + this.dataInicio
				+ "\t  Data conclusão: " + this.dataConclusao + "  "
				+ this.statusDoProjeto;
	}

	
}
