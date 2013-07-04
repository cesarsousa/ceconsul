package br.com.ceconsul.cetech.conexao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;


public class FabricaDeConexao {
	
	public Connection getConexao() throws ClassNotFoundException {		
		System.out.println("Conectando o Banco de Dados Cetech.");
		String url = "jdbc:mysql://localhost/cetech";
		String usuario = "root";
		String senha = "";
		try {
			System.out.println("............................tentando conectar");
			Class.forName("com.mysql.jdbc.Driver");
			System.out.println("....................................conectado");			
			return DriverManager
					.getConnection(url, usuario, senha);	
			
		} catch (SQLException e) {
			System.out.println(".................................banco de dados indisponivel, verifique conexao");			
			throw new RuntimeException(e);
		}
	}

}
