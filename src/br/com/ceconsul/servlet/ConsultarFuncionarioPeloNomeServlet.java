package br.com.ceconsul.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import br.com.ceconsul.cetech.Funcionario;
import br.com.ceconsul.cetechDao.FuncionarioDAO;

public class ConsultarFuncionarioPeloNomeServlet extends HttpServlet {

	@Override
	protected void service(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		
		PrintWriter out = response.getWriter();

		try {
			
			String nome = request.getParameter("nome");

			FuncionarioDAO dao = new FuncionarioDAO();
			List<Funcionario> listaDeFuncionario = dao.consultarFuncionario(nome);		
			
			request.setAttribute("listaDeFuncionarios", listaDeFuncionario);
			RequestDispatcher dispacher = request
					.getRequestDispatcher("/retorno-relatorio-funcionarios.jsp");
			dispacher.forward(request, response);			
			
		} catch (ClassNotFoundException e) {			
			e.printStackTrace();
		}

	}

}