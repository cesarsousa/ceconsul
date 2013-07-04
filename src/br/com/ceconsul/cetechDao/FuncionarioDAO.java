package br.com.ceconsul.cetechDao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import br.com.ceconsul.cetech.Funcionario;
import br.com.ceconsul.cetech.conexao.FabricaDeConexao;

public class FuncionarioDAO {

	private Connection conexao;

	public FuncionarioDAO() throws ClassNotFoundException {		
		this.conexao = new FabricaDeConexao().getConexao();
	}

	/**
	 * Método utilitário para cadastrar funcionario no Banco de Dados.
	 * 
	 * @param funcionario
	 */
	public void cadastrarFuncionario(Funcionario funcionario) {
		String sql = "insert into funcionarios (nome, departamento, "
				+ "funcao, telefone, cpf, salario, usuario, senha, dataNascimento)"
				+ " values (?,?,?,?,?,?,?,?,?)";
		
		try {
			// prepara statement para inserção
			PreparedStatement statement = conexao.prepareStatement(sql);

			// setar os valores
			statement.setString(1, funcionario.getNome());
			statement.setString(2, funcionario.getDepartamento());
			statement.setString(3, funcionario.getFuncao());
			statement.setString(4, funcionario.getTelefone());
			statement.setString(5, funcionario.getCpf());
			statement.setString(6, funcionario.getSalario());
			statement.setString(7, funcionario.getUsuario());
			statement.setString(8, funcionario.getSenha());
			statement.setString(9, funcionario.getDataNascimento());

			// executar
			statement.execute();
			statement.close();
		} catch (SQLException excecao) {
			throw new RuntimeException(excecao);
		}
	}
	
	/**
	 * 
	 * @return lista dos funcionarios do banco de dados.
	 */
	public List<Funcionario> exibirRelatorio() {
		try {
			List<Funcionario> funcionarios = new ArrayList<Funcionario>();
			PreparedStatement statement = this.conexao
					.prepareStatement("select * from funcionarios order by matricula");
			ResultSet resultSet = statement.executeQuery();

			while (resultSet.next()) {
				// criando o obj funcionario
				Funcionario funcionario = new Funcionario();
				funcionario.setMatricula(resultSet.getString("matricula"));
				funcionario.setNome(resultSet.getString("nome"));
				funcionario
						.setDepartamento(resultSet.getString("departamento"));
				funcionario.setFuncao(resultSet.getString("funcao"));
				funcionario.setTelefone(resultSet.getString("telefone"));
				funcionario.setCpf(resultSet.getString("cpf"));
				funcionario.setSalario(resultSet.getString("salario"));
				funcionario.setUsuario(resultSet.getString("usuario"));
				funcionario.setDataNascimento(resultSet
						.getString("dataNascimento"));

				funcionarios.add(funcionario);
			}

			resultSet.close();
			statement.close();

			return funcionarios;
			
		} catch (SQLException e) {
			throw new RuntimeException(e);
		}
	}
	
	/**
	 * Método verifica a existência do funcionário relacionado ao parâmetro solicitado
	 * no banco de dados.
	 * @param matricula
	 * @return um funcionário caso exista ou null caso contrário.
	 */
	public Funcionario consultarFuncionario (int matricula){
		try {
			List<Funcionario> funcionarios = new ArrayList<Funcionario>();
			PreparedStatement statement = this.conexao
					.prepareStatement("select * from funcionarios order by matricula");
			ResultSet resultSet = statement.executeQuery();

			while (resultSet.next()) {
				// criando o obj funcionario
				Funcionario funcionario = new Funcionario();
				funcionario.setMatricula(resultSet.getString("matricula"));
				funcionario.setNome(resultSet.getString("nome"));
				funcionario
						.setDepartamento(resultSet.getString("departamento"));
				funcionario.setFuncao(resultSet.getString("funcao"));
				funcionario.setTelefone(resultSet.getString("telefone"));
				funcionario.setCpf(resultSet.getString("cpf"));
				funcionario.setSalario(resultSet.getString("salario"));
				funcionario.setUsuario(resultSet.getString("usuario"));
				funcionario.setDataNascimento(resultSet
						.getString("dataNascimento"));

				funcionarios.add(funcionario);
			}

			resultSet.close();
			statement.close();
			
			for (Funcionario funcs : funcionarios){
				if (funcs.getMatricula() == matricula)
					return funcs;				
			}

			return null;
		} catch (SQLException e) {
			throw new RuntimeException(e);
		}
	}
	
	/**
	 * Verifica todas as ocorrência da parâmetro solicitado no banco de dados.
	 * @param nome
	 * @return uma lista da todas as ocorrências localizadas ou uma lista
	 *         vazia caso contrário. 
	 */
	public List<Funcionario> consultarFuncionario (String nome){
		try {
			List<Funcionario> funcionarios = new ArrayList<Funcionario>();
			PreparedStatement statement = this.conexao
					.prepareStatement("select * from funcionarios order by nome");
			ResultSet resultSet = statement.executeQuery();

			while (resultSet.next()) {
				// criando o obj funcionario
				Funcionario funcionario = new Funcionario();
				funcionario.setMatricula(resultSet.getString("matricula"));
				funcionario.setNome(resultSet.getString("nome"));
				funcionario
						.setDepartamento(resultSet.getString("departamento"));
				funcionario.setFuncao(resultSet.getString("funcao"));
				funcionario.setTelefone(resultSet.getString("telefone"));
				funcionario.setCpf(resultSet.getString("cpf"));
				funcionario.setSalario(resultSet.getString("salario"));
				funcionario.setUsuario(resultSet.getString("usuario"));
				funcionario.setDataNascimento(resultSet
						.getString("dataNascimento"));

				funcionarios.add(funcionario);
			}

			resultSet.close();
			statement.close();
			
			List<Funcionario> listaDeOcorrencias = new ArrayList<Funcionario>();
			
			for (Funcionario funcs : funcionarios){
				if (funcs.getNome().contains(nome))
					listaDeOcorrencias.add(funcs);			
			}

			return listaDeOcorrencias;
			
		} catch (SQLException e) {
			throw new RuntimeException(e);
		}
	}
	
	public boolean login(String usuario, int senha){
		
		try {			
			PreparedStatement statement = this.conexao
					.prepareStatement("select * from funcionarios " +
							"where funcao = 'gerente'");
			ResultSet resultSet = statement.executeQuery();

			if (resultSet.next()) {
				// criando o obj funcionario
				Funcionario funcionario = new Funcionario();
				funcionario.setUsuario(resultSet.getString("usuario"));
				funcionario.setSenha(resultSet.getString("senha"));	
				
				resultSet.close();
				statement.close();			
				
				if (!funcionario.getUsuario().equals(usuario)){ 
					return false;
				}
				if (Integer.parseInt(funcionario.getSenha()) != senha){
				return false;
				}
			}
			return true;
		} catch (SQLException e) {
			throw new RuntimeException(e);
		}
		
	}
	
	public void removerFuncionario(int matricula) {

		try {
			PreparedStatement statement = this.conexao
					.prepareStatement("delete from funcionarios where matricula ='"
							+ matricula + "'");
			
			
			statement.execute();
			statement.close();
			
			
		} catch (SQLException e) {
			throw new RuntimeException(e);
		}
	}	 
}
