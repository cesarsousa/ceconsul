package br.com.ceconsul.cetech;

import java.util.List;

public class Funcionario {

	// private static int numeroMatricula = 1;
	private int matricula;
	private String nome;
	private String departamento;
	private String funcao;
	private String telefone;
	private String cpf;
	private String salario;
	private String usuario;
	private String senha;
	private String dataNascimento;
	private List<Projeto> projetos;	

	public int getMatricula() {
		return matricula;
	}

	public void setMatricula(int matricula) {
		this.matricula = matricula;
	}

	public void setMatricula(String matricula) {
		this.matricula = Integer.parseInt(matricula);
	}

	public String getNome() {
		return nome;
	}

	public void setNome(String nome) {
		this.nome = nome;
	}

	public String getDepartamento() {
		return departamento;
	}

	public void setDepartamento(String departamento) {
		this.departamento = departamento;
	}

	public String getFuncao() {
		return funcao;
	}

	public void setFuncao(String funcao) {
		this.funcao = funcao;
	}

	public String getTelefone() {
		return telefone;
	}

	public void setTelefone(String telefone) {
		this.telefone = telefone;
	}

	public String getCpf() {
		return cpf;
	}

	public void setCpf(String cpf) {
		this.cpf = cpf;
	}

	public String getSalario() {
		return salario;
	}

	public void setSalario(String salario) {
		this.salario = salario;
	}

	public String getUsuario() {
		return usuario;
	}

	public void setUsuario(String usuario) {
		this.usuario = usuario;
	}

	public String getSenha() {
		return this.senha;
	}	

	public void setSenha(String senha) {
		this.senha = senha;
	}	

	public String getDataNascimento() {
		return dataNascimento;
	}

	public void setDataNascimento(String dataNascimento) {
		this.dataNascimento = dataNascimento;
	}
	
	public List<Projeto> getProjetos() {
		return projetos;
	}
	
	public void setProjetos(List<Projeto> projetos) {
		this.projetos = projetos;
	}

	public String toString() {
		return "---------------------------------------------------------------\n"
				+ ".." + this.matricula + ".. NOME: "+ this.nome + " USUARIO: " + this.usuario 
				+ "\n" + this.funcao + " de " + this.departamento + ". SALARIO: " + this.salario 
				+ "\n" + "TELEFONE: " + this.telefone + ". CPF: " + this.cpf + ". DATA DE NASCIMENTO: " + this.dataNascimento + ".";
	}

}
