<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<%@page import="br.com.ceconsul.cetechDao.ProjetoDao"%>
<%@page import="br.com.ceconsul.cetech.Projeto"%>
<html xmlns="http://www.w3.org/1999/xhtml">
<%
	Projeto projeto = new Projeto();
%>
<%
	projeto = (Projeto) request.getAttribute("projeto");
%>

<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>CECONSUL - CONSULTAR PROJETO</title>
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
<table width="760" cellpadding="5" border="1">
	<tr bgcolor="#FFFFFF">
		<td width="760">
		<ul>
			<li>
			<p><font color="#000066" size="+2">Consulta de Projeto!</font></p>
			</li>
		</ul>
		<hr />
		<div align="center">
		<table width="600" border="0" cellpadding="2">
			<tr>
				<td width="68" bgcolor="#333333">
				<center><font color="#FFFFFF">Numero</font></center>
				</td>
				<td width="67" bgcolor="#333333">
				<center><font color="#FFFFFF">Nome</font></center>
				</td>
				<td width="98" bgcolor="#333333">
				<center><font color="#FFFFFF">Dt Inicio</font></center>
				</td>
				<td width="93" bgcolor="#333333">
				<center><font color="#FFFFFF">Dt Conclus&atilde;o</font></center>
				</td>
				<td width="89" bgcolor="#333333">
				<center><font color="#FFFFFF">Funcion&aacute;rio</font></center>
				</td>
				<td width="147" bgcolor="#333333">
				<center><font color="#FFFFFF">Status</font></center>
				</td>
			</tr>
			<%
				if (projeto == null) {
			%>
			<div align="center"><i><p><% out.println("< nao existem registro para a solicitacao >"); %></p></i></div>

			<%
				} else {
			%>
			<tr>
				<td width="68" bgcolor="#CCCCCC">
				<%
					out.println(projeto.getNumero());
				%>
				</td>
				<td width="67" bgcolor="#CCCCCC">
				<%
					out.println(projeto.getNome().toUpperCase());
				%>
				</td>
				<td width="98" bgcolor="#CCCCCC">
				<%
					out.println(projeto.getDataInicio());
				%>
				</td>
				<td width="93" bgcolor="#CCCCCC">
				<%
					out.println(projeto.getDataConclusao());
				%>
				</td>
				<td width="89" bgcolor="#CCCCCC">
				<%
					out.println(projeto.getMatriculaFuncionario());
				%>
				</td>
				<td width="147" bgcolor="#CCCCCC">
				<%
					out.println(projeto.getStatusDoProjeto());
				%>
				</td>

			</tr>
			<%
				}
			%>
		</table>
		</div>

		<p>&nbsp;</p>
		<p><a href="consultar-projeto.jsp">Outra Consulta</a></p>
		<p><a href="menu.jsp">RETORNAR</a></p>
		</td>
	</tr>
</table>
</div>

<p>&nbsp;</p>

<div align="center">
<table width="760" bgcolor="#000066">
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
