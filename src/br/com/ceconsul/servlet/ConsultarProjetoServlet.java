package br.com.ceconsul.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import br.com.ceconsul.cetech.Projeto;
import br.com.ceconsul.cetechDao.ProjetoDao;

public class ConsultarProjetoServlet extends HttpServlet{
	
	@Override
	protected void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		PrintWriter out = response.getWriter();
		
		try{			
			
			String objeto = request.getParameter("objeto");			
			
			ProjetoDao dao = new ProjetoDao();
			Projeto projeto = dao.exibirProjetos(Integer.parseInt(objeto));
			
			request.setAttribute("projeto", projeto);
			RequestDispatcher dispacher = request.getRequestDispatcher("/retorno-consultar-projeto.jsp");
			dispacher.forward(request, response);		
						
		} catch (ClassNotFoundException e) {			
			e.printStackTrace();
		} catch (NumberFormatException e) {			
			
			String objeto = request.getParameter("objeto");			
			try {
				
				ProjetoDao dao = new ProjetoDao();
				List<Projeto> listaDeProjetos = dao.exibirProjetos(objeto);				
				
				request.setAttribute("listaDeProjetos", listaDeProjetos);
				RequestDispatcher dispacher = request.getRequestDispatcher("/retorno-relatorio-projetos.jsp");
				dispacher.forward(request, response);
				
			} catch (ClassNotFoundException e1) {				
				e1.printStackTrace();
			}
			
		}
		
	}

}