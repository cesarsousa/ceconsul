package br.com.ceconsul.cetechDao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import br.com.ceconsul.cetech.Projeto;
import br.com.ceconsul.cetech.conexao.FabricaDeConexao;

public class ProjetoDao {

	private Connection conexao;

	public ProjetoDao() throws ClassNotFoundException {
		this.conexao = new FabricaDeConexao().getConexao();
	}

	/**
	 * Método utilitário para cadastrar projetos no banco de dados
	 * 
	 * @param projeto
	 */
	public void cadastrarProjetos(Projeto projeto) {
		String sql = "insert into projetos (nome, dataInicio, dataConclusao, " +
		"statusDoProjeto, matFunc)"
		+ " values (?,?,?,?,?)";

		try {
			// prepara statement para inserção
			PreparedStatement statement = conexao.prepareStatement(sql);

			// setar os valores
			statement.setString(1, projeto.getNome());
			statement.setString(2, projeto.getDataInicio());
			statement.setString(3, projeto.getDataConclusao());
			statement.setString(4, projeto.getStatusDoProjeto());
			statement.setString(5, projeto.getMatriculaFuncionario());

			// executar
			statement.execute();
			statement.close();
		} catch (SQLException excecao) {
			throw new RuntimeException(excecao);
		}
	}

	/**
	 * 
	 * @return relatórios dos projetos cadastrados no banco
	 */
	public List<Projeto> consultarProjetosEmAndamento() {
		try {
			List<Projeto> projetos = new ArrayList<Projeto>();
			PreparedStatement statement = this.conexao
					.prepareStatement("select * from projetos order by numero");
			ResultSet resultSet = statement.executeQuery();

			while (resultSet.next()) {
				// criando o obj projeto
				Projeto projeto = new Projeto();

				projeto.setNumero(resultSet.getString("numero"));
				projeto.setNome(resultSet.getString("nome"));
				projeto.setDataInicio(resultSet.getString("dataInicio"));
				projeto.setDataConclusao(resultSet.getString("dataConclusao"));
				projeto.setStatusDoProjeto(resultSet.getString("statusDoProjeto"));
				projeto.setMatriculaFuncionario(resultSet.getString("matFunc"));

				projetos.add(projeto);
				
			}

			resultSet.close();
			statement.close();

			return projetos;
		} catch (SQLException e) {
			throw new RuntimeException(e);
		}
	}
	
	/**
	 * @param numero
	 * @return projeto relacionado ao numero passado como parametro,
	 *  caso contrario retorna null.
	 */
	public Projeto exibirProjetos (int numero){
		try {
			List<Projeto> projetos = new ArrayList<Projeto>();
			PreparedStatement statement = this.conexao
					.prepareStatement("select * from projetos order by numero");
			ResultSet resultSet = statement.executeQuery();

			while (resultSet.next()) {
				// criando o obj projeto
				Projeto projeto = new Projeto();
				projeto.setNumero(resultSet.getString("numero"));
				projeto.setNome(resultSet.getString("nome"));
				projeto.setDataInicio(resultSet.getString("dataInicio"));
				projeto.setDataConclusao(resultSet.getString("dataConclusao"));
				projeto.setStatusDoProjeto(resultSet.getString("statusDoProjeto"));
				projeto.setMatriculaFuncionario(resultSet.getString("matFunc"));				

				projetos.add(projeto);
			}

			resultSet.close();
			statement.close();
			
			for (Projeto proj : projetos){
				if (proj.getNumero() == numero)
					return proj;				
			}

			return null;
		} catch (SQLException e) {
			throw new RuntimeException(e);
		}
	}
	
	/**
	 * Reescrita do método exibirProjetos 
	 * @param nome
	 * @return lista de projetos com todos os nomes relacionados, caso nao exista 
	 *  projeto relacionados com o nome passado
	 *  uma lista vazia sera retornada.            
	 */
	public List<Projeto> exibirProjetos (String nome){
		try {
			List<Projeto> projetos = new ArrayList<Projeto>();
			List<Projeto> listaDeRetorno = new ArrayList<Projeto>();
			PreparedStatement statement = this.conexao
					.prepareStatement("select * from projetos order by nome");
			ResultSet resultSet = statement.executeQuery();

			while (resultSet.next()) {
				// criando o obj projeto
				Projeto projeto = new Projeto();
				projeto.setNumero(resultSet.getString("numero"));
				projeto.setNome(resultSet.getString("nome"));
				projeto.setDataInicio(resultSet.getString("dataInicio"));
				projeto.setDataConclusao(resultSet.getString("dataConclusao"));
				projeto.setStatusDoProjeto(resultSet.getString("statusDoProjeto"));
				projeto.setMatriculaFuncionario(resultSet.getString("matFunc"));				

				projetos.add(projeto);
			}

			resultSet.close();
			statement.close();
			
			for (Projeto proj : projetos){				
				if (proj.getNome().contains(nome)){					
					listaDeRetorno.add(proj);
				}								
			}
			
			return listaDeRetorno;
			
		} catch (SQLException e) {
			throw new RuntimeException(e);
		}
	}
	
	public void removerProjeto(int numero) {

		try {
			PreparedStatement statement = this.conexao
					.prepareStatement("delete from projetos where numero ='"
							+ numero + "'");
			
			
			statement.execute();
			statement.close();
			
			
		} catch (SQLException e) {
			throw new RuntimeException(e);
		}
	}
}
