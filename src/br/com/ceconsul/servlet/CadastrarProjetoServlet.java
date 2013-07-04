package br.com.ceconsul.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import br.com.ceconsul.cetech.Projeto;
import br.com.ceconsul.cetechDao.ProjetoDao;

public class CadastrarProjetoServlet extends HttpServlet{
	
	@Override
	protected void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		PrintWriter out = response.getWriter();

		try {
			// busca os parametros do request
			String nome = request.getParameter("nome");
			String matFunc = request.getParameter("matFunc");
			String dataInicio = request.getParameter("dataInicio");
			String dataConclusao = request.getParameter("dataConclusao");

			// montar um obj Projeto
			Projeto projeto = new Projeto();
			projeto.setNome(nome);
			projeto.setMatriculaFuncionario(matFunc);
			projeto.setDataInicio(dataInicio);
			projeto.setDataConclusao(dataConclusao);
			
			ProjetoDao dao = new ProjetoDao();		
			dao.cadastrarProjetos(projeto);
			
			RequestDispatcher dispacher = request.getRequestDispatcher("/projeto-cadastrado.jsp");
			dispacher.forward(request, response);

		} catch (ClassNotFoundException e) {			
			e.printStackTrace();
		}		
	}
}
