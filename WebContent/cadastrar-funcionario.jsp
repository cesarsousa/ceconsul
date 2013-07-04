<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
  <!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
  <html xmlns="http://www.w3.org/1999/xhtml">
  <%@ page import="java.util.*, br.com.ceconsul.cetech.*, br.com.ceconsul.cetechDao.*" %>
  <head>
  <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
  <title>CECONSUL - CADASTRAR FUNCIONARIO</title>  
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
		
		if (d.cpf.value == ""){
			alert("< O campo " + d.cpf.name + " deve ser preenchido! >");
			d.cpf.focus();
			return false;
		}
		
		if (d.dataNascimento.value == ""){
			alert("< O campo " + d.dataNascimento.name + " deve ser preenchido! >");
			d.dataNascimento.focus();
			return false;
		}
		
		if (d.salario.value == ""){
			alert("< O campo " + d.salario.name + " deve ser preenchido! >");
			d.salario.focus();
			return false;
		}

		if (d.telefone.value == ""){
			alert("< O campo " + d.telefone.name + " deve ser preenchido! >");
			d.telefone.focus();
			return false;
		}

		if (d.usuario.value == ""){
			alert("< O campo " + d.usuario.name + " deve ser preenchido! >");
			d.usuario.focus();
			return false;
		}

		if (d.senha.value == ""){
			alert("< O campo " + d.senha.name + " deve ser preenchido! >");
			d.senha.focus();
			return false;
		}	
		
		return true;
	}
  </script>
  </head>
  
  <body bgcolor="#999999"=   text="#000000">
  <table width="100%" bgcolor="#000066">
  <tr><td><p></p></td></tr></table>
  <center><p><font color="#000066" size="+4" ><b>C e c o n s u l</b></font><br />
  <font color="#333333" size="+2"><i><b>Aplica&ccedil;&otilde;es para RH</b></i></font></p></center>
  <table width="100%" bgcolor="#000066">
  <tr><td><p></p></td></tr></table>
  
  <p>&nbsp;</p>  
  
  <div align="center"><table width="760" cellpadding="5" border="1">
    <tr  bgcolor="#CCCCCC">    
      <td width="760">
      <ul>
      <li>
        <p><font color="#000066" size="+2">Cadastrar Funcion&aacute;rio.</font></p></li>
      </ul>
      <hr />
      
      <form name="cadastro" action="cadastrarFuncionario" onsubmit="return validaForm()">
      
     <table width="100%" cellpadding="5" >
    <tr>
      <td width="50%"><div align="right"><font color="#000066">Nome :</font></div></td>
      <td width="50%"><div align="left"><input type="text" name="nome" /></div></td>
    </tr>
    <tr>
      <td width="50%"><div align="right"><font color="#000066">CPF :</font></div></td>
      <td width="50%"><div align="left"><input type="text" name="cpf" /></div></td>
    </tr>
    <tr>
      <td width="50%"><div align="right"><font color="#000066">Data de Nascimento :</font></div></td>
      <td width="50%"><div align="left"><input type="text" name="dataNascimento" /></div></td>
    </tr>
    <tr>
      <td width="50%"><div align="right"><font color="#000066">Sal&aacute;rio :</font></div></td>
      <td width="50%"><div align="left"><input type="text" name="salario" /></div></td>
    </tr>
    <tr>
      <td width="50%"><div align="right"><font color="#000066">Telefone :</font></div></td>
      <td width="50%"><div align="left"><input type="text" name="telefone" /></div></td>
    </tr>
  </table>
  
  <br />
  <div align="center">   
      <font color="#000066">Departamento:</font><br />
      <input type="radio" name="departamento" value="TI" checked="checked" />TI<br />
      <input type="radio" name="departamento" value="analise" />An&aacute;lise<br />
      <input type="radio" name="departamento" value="qualidade" />Qualidade<br />
      <input type="radio" name="departamento" value="desenvolvimento" />Desenvolvimento<br /><br />
      <font color="#000066">Fun&ccedil;&atilde;o:</font><br />
      <input type="radio" name="funcao" value="assistente" checked="checked" />Assistente.<br />
      <input type="radio" name="funcao" value="coordenador" />Coordenador<br /><br />
      </div>
      <table width="100%" cellpadding="5" >
    <tr>
      <td width="50%"><div align="right"><font color="#000066">Usuario :</font></div></td>
      <td width="50%"><div align="left"><input type="text" name="usuario" /></div></td>
    </tr>
    <tr>
      <td width="50%"><div align="right"><font color="#000066">Senha :</font></div></td>
      <td width="50%"><div align="left"><input type="password" name="senha" /></div></td>
    </tr>  
  </table>
  <br />
  <div align="center"><input type="submit" value="Cadastrar" />&nbsp;&nbsp;<input type="reset" value="Corrigir" /></div>
  <br />    
      </form>
      <p><a href="menu.jsp">RETORNO</a></p>
      </td>    
    </tr>
  </table></div>
  
  <p>&nbsp;</p>
  
  <div align="center"><table width="760" bgcolor="#000066">
  <tr>
  <td><center><b><i><font color="#CCCCCC">2010 - C e c o n s u l</font></i></b></center></td>
  </tr>
  </table></div>
  </body>
  </html>
