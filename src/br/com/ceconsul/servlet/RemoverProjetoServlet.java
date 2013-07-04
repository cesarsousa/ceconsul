package br.com.ceconsul.servlet;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import br.com.ceconsul.cetech.Projeto;
import br.com.ceconsul.cetechDao.ProjetoDao;

public class RemoverProjetoServlet  extends HttpServlet {
	
	@Override
	protected void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
try {
			
			String numero = request.getParameter("numero");
			ProjetoDao dao = new ProjetoDao();
			
			dao.removerProjeto(Integer.parseInt(numero));		
			
			List<Projeto> listaDeProjetos = dao.consultarProjetosEmAndamento();

			request.setAttribute("listaDeProjetos", listaDeProjetos);
			
			RequestDispatcher dispacher = request
					.getRequestDispatcher("/retorno-relatorio-projetos.jsp");
			dispacher.forward(request, response);

		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		}
	}		
}