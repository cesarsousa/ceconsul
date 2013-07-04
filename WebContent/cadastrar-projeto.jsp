<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>CECONSUL - CADASTRAR PROJETO</title>
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
<script language="JavaScript">
  function validaForm(){
		
		d = document.cadastro;
		
		if (d.nome.value == ""){
			alert("< O campo " + d.nome.name + " deve ser preenchido! >");
			d.nome.focus();
			return false;
		}
		
		if (d.matFunc.value == ""){
			alert("< O campo matricula do funcionario deve ser preenchido! >");
			d.matFunc.focus();
			return false;
		}
		
		if (d.dataInicio.value == ""){
			alert("< O campo data de inicio deve ser preenchido! >");
			d.dataInicio.focus();
			return false;
		}
		
		if (d.dataConclusao.value == ""){
			alert("< O campo data de conclusao deve ser preenchido! >");
			d.dataConclusao.focus();
			return false;
		}
				
		return true;
	}
  </script>
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
			<p><font color="#000066" size="+2">Cadastrar Projeto.</font></p>
			</li>
		</ul>
		<hr />
		<p>&nbsp;</p>

		<form name="cadastro" action="cadastrarProjeto" method="post" onsubmit="return validaForm()">

		<table width="100%" cellpadding="5">
			<tr>
				<td width="50%">
				<div align="right"><font color="#000066">Nome do
				projeto (sigla) :</font></div>
				</td>
				<td width="50%">
				<div align="left"><input type="text" name="nome" /></div>
				</td>
			</tr>
			<tr>
				<td width="50%">
				<div align="right"><font color="#000066">Matricula do
				Funcion&aacute;rio :</font></div>
				</td>
				<td width="50%">
				<div align="left"><input type="text" name="matFunc" /></div>
				</td>
			</tr>
			<tr>
				<td width="50%">
				<div align="right"><font color="#000066">Data de
				In&iacute;cio :</font></div>
				</td>
				<td width="50%">
				<div align="left"><input type="text" name="dataInicio" /></div>
				</td>
			</tr>
			<tr>
				<td width="50%">
				<div align="right"><font color="#000066">Data da
				Conclus&atilde;o (previs&atilde;o) :</font></div>
				</td>
				<td width="50%">
				<div align="left"><input type="text" name="dataConclusao" /></div>
				</td>
			</tr>
		</table>

		<br />
		<div align="center"><input type="submit" value="Cadastrar" />&nbsp;&nbsp;<input
			type="reset" value="Corrigir" /></div>
		</form>
		<p>&nbsp;</p>
		<p><br />
		</p>

		<p><a href="menu.jsp">RETORNO</a></p>
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
