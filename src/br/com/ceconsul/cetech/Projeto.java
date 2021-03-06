package br.com.ceconsul.cetech;

import java.util.Date;

public class Projeto {	
	
	private int numero;
	private String nome;
	private String dataInicio;
	private String dataConclusao;
	private String statusDoProjeto;
	private String matriculaFuncionario;
	private String reponsavel;
	private Date dataExclusao;
	
	private StatusProcessamento statusProcessamento;
	
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
	
	public String getReponsavel() {
		return reponsavel;
	}
	
	public void setReponsavel(String reponsavel) {
		this.reponsavel = reponsavel;
	}
	
	public StatusProcessamento getStatusProcessamento() {
		return statusProcessamento;
	}
	
	public void setStatusProcessamento(StatusProcessamento statusProcessamento) {
		this.statusProcessamento = statusProcessamento;
	}
	
	public Date getDataExclusao() {
		return dataExclusao;
	}
	
	public void setDataExclusao(Date dataExclusao) {
		this.dataExclusao = dataExclusao;
	}

	public String toString() {
		return "----------------------------------------------------------\n"
				+ "Numero: " + this.numero + "   " + this.nome.toUpperCase() + "  Funcionario(" + 
				this.matriculaFuncionario + ")" 
				+ "\t  Data inicio: " + this.dataInicio
				+ "\t  Data conclusao: " + this.dataConclusao + "  "
				+ this.statusDoProjeto;
	}
	
}
