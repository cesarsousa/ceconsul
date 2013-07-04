package br.com.ceconsul.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import br.com.ceconsul.cetech.Funcionario;
import br.com.ceconsul.cetechDao.FuncionarioDAO;

public class CadastrarFuncionarioServlet extends HttpServlet {

	@Override
	protected void service(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {

		PrintWriter out = response.getWriter();

		try {
			// busca os parametros do request
			String nome = request.getParameter("nome");
			String departamento = request.getParameter("departamento");
			String funcao = request.getParameter("funcao");
			String telefone = request.getParameter("telefone");
			String cpf = request.getParameter("cpf");
			String salario = request.getParameter("salario");
			String usuario = request.getParameter("usuario");
			String senha = request.getParameter("senha");
			String dataNascimento = request.getParameter("dataNascimento");

			// montar um obj Funcionario
			Funcionario funcionario = new Funcionario();
			funcionario.setNome(nome);
			funcionario.setDepartamento(departamento);
			funcionario.setFuncao(funcao);
			funcionario.setTelefone(telefone);
			funcionario.setCpf(cpf);
			funcionario.setSalario(salario);
			funcionario.setUsuario(usuario);
			funcionario.setSenha(senha);
			funcionario.setDataNascimento(dataNascimento);

			FuncionarioDAO dao = new FuncionarioDAO();
			dao.cadastrarFuncionario(funcionario);
			
			RequestDispatcher dispacher = request.getRequestDispatcher("/funcionario-cadastrado.jsp");
			dispacher.forward(request, response);
			
		} catch (ClassNotFoundException e) {			
			e.printStackTrace();
		}
	}
}
