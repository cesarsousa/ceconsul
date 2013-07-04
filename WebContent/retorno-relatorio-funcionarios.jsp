<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@page import="java.util.*"%>
<%@page import="br.com.ceconsul.cetechDao.FuncionarioDAO"%>
<%@page import="br.com.ceconsul.cetech.Funcionario"%>
<%@page import="java.io.PrintWriter"%>
<%
	ArrayList<Funcionario> listaDeFuncionarios = null;
%>
<%
	listaDeFuncionarios = (ArrayList<Funcionario>) request
			.getAttribute("listaDeFuncionarios");
%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>CECONSUL - RELATORIO DE FUNCIONARIOS</title>
</head>


<body bgcolor="#CCCCCC" =   text="#000000">
<table width="100%" bgcolor="#000066">
	<tr>
		<td>
		<p></p>
		</td>
	</tr>
</table>
<center>
<p><font color="#000066" size="+4"><b>C e c o n s u l</b></font><br />
<font color="#333333" size="+2"><i><b>Aplica&ccedil;&otilde;es
para RH</b></i></font></p>
</center>
<table width="100%" bgcolor="#000066">
	<tr>
		<td>
		<p></p>
		</td>
	</tr>
</table>

<p>&nbsp;</p>

<div align="center">
<table width="1000" cellpadding="5" border="1">
	<tr bgcolor="#FFFFFF">
		<td width="760">
		<ul>
			<li>
			<p><font color="#000066" size="+2">Consultar
			Funcion&aacute;rios.</font></p>
			</li>
		</ul>
		<hr />
		<table width="1000" border="0" cellpadding="2"">
			<tr>
				<td width="80" bgcolor="#333333">
				<center><font color="#FFFFFF">Matricula</font></center>
				</td>
				<td width="127" bgcolor="#333333">
				<center><font color="#FFFFFF">Nome</font></center>
				</td>
				<td width="99" bgcolor="#333333">
				<center><font color="#FFFFFF">usu&aacute;rio</font></center>
				</td>
				<td width="122" bgcolor="#333333">
				<center><font color="#FFFFFF">Fun&ccedil;&atilde;o</font></center>
				</td>
				<td width="119" bgcolor="#333333">
				<center><font color="#FFFFFF">Departamento</font></center>
				</td>
				<td width="74" bgcolor="#333333">
				<center><font color="#FFFFFF">Sal&aacute;rio</font></center>
				</td>
				<td width="112" bgcolor="#333333">
				<center><font color="#FFFFFF">CPF</font></center>
				</td>
				<td width="90" bgcolor="#333333">
				<center><font color="#FFFFFF">Telefone</font></center>
				</td>
				<td width="121" bgcolor="#333333">
				<center><font color="#FFFFFF">Data Nascimento</font></center>
				</td>
			</tr>
			<%
				if (listaDeFuncionarios.isEmpty()) {
			%>
			<div align="center"><i>
			<p>
			<%
				out.println("< nao existem registro para a solicitacao >");
			%>
			</p>
			</i></div>
			<%
				} else {
					int i = 1;
					for (Funcionario funcionario : listaDeFuncionarios) {
						i++;
						if (i % 2 == 0) {
			%>
			<tr>
				<td width="80" bgcolor="#CCCCCC">
				<%
					out.println(funcionario.getMatricula());
				%>
				</td>
				<td width="127" bgcolor="#CCCCCC">
				<%
					out.println(funcionario.getNome());
				%>
				</td>
				<td width="99" bgcolor="#CCCCCC">
				<%
					out.println(funcionario.getUsuario());
				%>
				</td>
				<td width="122" bgcolor="#CCCCCC">
				<%
					out.println(funcionario.getFuncao());
				%>
				</td>
				<td width="119" bgcolor="#CCCCCC">
				<%
					out.println(funcionario.getDepartamento());
				%>
				</td>
				<td width="74" bgcolor="#CCCCCC">
				<%
					out.println(funcionario.getSalario());
				%>
				</td>
				<td width="112" bgcolor="#CCCCCC">
				<%
					out.println(funcionario.getCpf());
				%>
				</td>
				<td width="90" bgcolor="#CCCCCC">
				<%
					out.println(funcionario.getTelefone());
				%>
				</td>
				<td width="121" bgcolor="#CCCCCC">
				<%
					out.println(funcionario.getDataNascimento());
				%>
				</td>
				<td width="121" bgcolor="#CCCCCC"><a href="removerFuncionario?matricula=<%= funcionario.getMatricula() %>">REMOVER</a></td>
			</tr>
			<%
				} else {
			%>
			<tr>
				<td width="80" bgcolor="#999999">
				<%
					out.println(funcionario.getMatricula());
				%>
				</td>
				<td width="127" bgcolor="#999999">
				<%
					out.println(funcionario.getNome());
				%>
				</td>
				<td width="99" bgcolor="#999999">
				<%
					out.println(funcionario.getUsuario());
				%>
				</td>
				<td width="122" bgcolor="#999999">
				<%
					out.println(funcionario.getFuncao());
				%>
				</td>
				<td width="119" bgcolor="#999999">
				<%
					out.println(funcionario.getDepartamento());
				%>
				</td>
				<td width="74" bgcolor="#999999">
				<%
					out.println(funcionario.getSalario());
				%>
				</td>
				<td width="112" bgcolor="#999999">
				<%
					out.println(funcionario.getCpf());
				%>
				</td>
				<td width="90" bgcolor="#999999">
				<%
					out.println(funcionario.getTelefone());
				%>
				</td>
				<td width="121" bgcolor="#999999">
				<%
					out.println(funcionario.getDataNascimento());
				%>
				</td>
				<td width="121" bgcolor="#CCCCCC">
				<a href="removerFuncionario?matricula=<%= funcionario.getMatricula() %>">REMOVER</a></td>				
			</tr>
			<%
				}
					}
				}
			%>
		</table>
		<p>&nbsp;</p>
		<%
			if (listaDeFuncionarios.isEmpty()) {
		%>
		<p><a href="consultar-funcionario.jsp">Outra Consulta</a></p>
		<%
			}
		%>
		<p><a href="menu.jsp">RETORNAR</a></p>
		</td>
	</tr>
</table>
</div>

<p>&nbsp;</p>

<div align="center">
<table width="1000" bgcolor="#000066">
	<tr>
		<td>
		<center><b><i><font color="#CCCCCC">2010 - C e
		c o n s u l</font></i></b></center>
		</td>
	</tr>
</table>
</div>

</body>
</html>