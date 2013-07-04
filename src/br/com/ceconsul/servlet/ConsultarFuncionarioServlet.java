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

public class ConsultarFuncionarioServlet extends HttpServlet{
	
	@Override
	protected void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		PrintWriter out = response.getWriter();
		
		try{			
			
			String matricula = request.getParameter("matricula");
			
			FuncionarioDAO dao = new FuncionarioDAO();
			Funcionario funcionario = dao.consultarFuncionario(Integer.parseInt(matricula));
			
			request.setAttribute("funcionario", funcionario);
			RequestDispatcher dispacher = request.getRequestDispatcher("/retorno-consultar-funcionario.jsp");
			dispacher.forward(request, response);			
						
		} catch (ClassNotFoundException e) {			
			e.printStackTrace();
		} catch (NumberFormatException e) {
			e.printStackTrace();
			request.setAttribute("string", "< entrada invalida >");
			RequestDispatcher dispacher = request.getRequestDispatcher("/consultar-funcionario.jsp");
			dispacher.forward(request, response);
		}
		
	}

}
