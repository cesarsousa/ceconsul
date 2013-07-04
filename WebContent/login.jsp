<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>CECONSUL - ACESSO AO SISTEMA</title>
<style type="text/css">
<!--
a:link {
	color: #00F;
	text-decoration: none;
}

a:visited {
	text-decoration: none;
	color: #900;
}

a:hover {
	text-decoration: underline;
	color: #09C;
}

a:active {
	text-decoration: none;
	color: #666;
}

h1 {
	font-size: 18px;
	color: #333;
}

h2 {
	font-size: 14px;
	color: #000;
}

h3 {
	font-size: 12px;
	color: #000;
}
-->
</style>
</head>

<body bgcolor="#999999" =   text="#000000">
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
	<tr bgcolor="#CCCCCC">
		<td width="760">
		<ul>
			<li>
			<p><font color="#000066" size="+2">Acesso ao Sistema.</font></p>
			</li>
		</ul>
		<hr />
		<% 
        String mensagem = (String)request.getAttribute("string");
        if (mensagem != null){
        %>
		
		<div align="center"><p><font color="#990000"><i><% out.println(mensagem); %></i></font></p></div>
		
		<% }else{ %>
		<p>&nbsp;</p>
		<% } %>
		<p>&nbsp;</p>
		<form action="login" method="post">

		<table width="100%" cellpadding="5">
			<tr>
				<td width="50%">
				<div align="right"><font color="#000066">Usuario:</font></div>
				</td>
				<td width="50%">
				<div align="left"><input type="text" name="usuario" /></div>
				</td>
			</tr>
			<tr>
				<td width="50%">
				<div align="right"><font color="#000066">Senha:</font></div>
				</td>
				<td width="50%">
				<div align="left"><input type="password" name="senha" /></div>
				</td>
			</tr>
		</table>
		<br />
		<div align="center"><input type="submit" value="Login" />&nbsp;&nbsp;<input
			type="reset" value="Corrigir" /></div>
		<br />
		</form>
		<p>&nbsp;</p>
		<p>&nbsp;</p>
		<p><a href="index.jsp">RETORNO</a></p>
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
