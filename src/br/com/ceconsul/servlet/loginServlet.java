package br.com.ceconsul.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.net.ConnectException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import br.com.ceconsul.cetechDao.FuncionarioDAO;

public class loginServlet extends HttpServlet{
	
	@Override
	protected void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		PrintWriter out = response.getWriter();

		try {
			
			String usuario = request.getParameter("usuario");					
			String senha = request.getParameter("senha");			

			FuncionarioDAO dao = new FuncionarioDAO();
			if(dao.login(usuario, Integer.parseInt(senha))){			
			RequestDispatcher dispacher = request.getRequestDispatcher("/menu.jsp");
			dispacher.forward(request, response);
			}else{
				request.setAttribute("string", "< usuario ou senha invalida >");
				RequestDispatcher dispatcher = request.getRequestDispatcher("/login.jsp");
				dispatcher.forward(request, response);
			}

		} catch (ClassNotFoundException e) {			
			e.printStackTrace();
		} catch (NumberFormatException e){
			e.printStackTrace();
			request.setAttribute("string", "< usuario ou senha invalida >");
			RequestDispatcher dispatcher = request.getRequestDispatcher("/login.jsp");
			dispatcher.forward(request, response);
		} catch (ConnectException e) {
			e.printStackTrace();
			request.setAttribute("string", "< banco de dados nao disponivel >");
			RequestDispatcher dispatcher = request.getRequestDispatcher("/login.jsp");
			dispatcher.forward(request, response);
		}
	}

}
