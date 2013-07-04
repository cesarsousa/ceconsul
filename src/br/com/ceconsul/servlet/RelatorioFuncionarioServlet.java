package br.com.ceconsul.servlet;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import br.com.ceconsul.cetech.Funcionario;
import br.com.ceconsul.cetechDao.FuncionarioDAO;

public class RelatorioFuncionarioServlet extends HttpServlet {

	@Override
	protected void service(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {

		try {
			
			FuncionarioDAO dao = new FuncionarioDAO();
			List<Funcionario> listaDeFuncionarios = dao.exibirRelatorio();
			
			request.setAttribute("listaDeFuncionarios", listaDeFuncionarios);
			RequestDispatcher dispacher = request
					.getRequestDispatcher("/retorno-relatorio-funcionarios.jsp");
			dispacher.forward(request, response);

		} catch (ClassNotFoundException e) {			
			e.printStackTrace();
		}
	}
}
