<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
  <!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
  <html xmlns="http://www.w3.org/1999/xhtml">
  <head>
  <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
  <title>CECONSUL - Aplica&ccedil;&otilde;es para RH</title>
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
  </style></head>
  
  <body bgcolor="#CCCCCC"   text="#000000">
  <table width="100%" bgcolor="#000066">
  <tr><td><p></p></td></tr></table>
  <center><p><font color="#000066" size="+4" ><b>C e c o n s u l</b></font><br />
  <font color="#333333" size="+2"><i><b>Aplica&ccedil;&otilde;es para RH</b></i></font></p></center>
  <table width="100%" bgcolor="#000066">
  <tr><td><p></p></td></tr></table>
    
  <div align="center">
  <table width="760" bgcolor="#CCCCCC">
  <tr>
  <td><div align="right"><p><a href="index.jsp">sair</a></p></div></td>
  </tr>
  </table>
  </div>
  
  
  <div align="center"><table width="760" cellpadding="5" border="1">
    <tr  bgcolor="#FFFFFF">    
      <td width="760">     
      
      <table width="100%" cellpadding="0">
        <tr>
          <td width="380"><p>&nbsp;</p>
      
      <div align="center"> 
      <p><font color="#000066" size="+1"><a href="cadastrar-funcionario.jsp">Cadastrar Funcion&aacute;rio.</a></font></p>      
      <p><font color="#000066" size="+1"><a href="consultar-funcionario.jsp">
      Consultar Funcion&aacute;rio.</a></font></p>
           
      <form action="relatorioFuncionarios"><input type="submit" value="Emitir Relatorio Funcionarios" /></form>           
      </div>
      
      <p>&nbsp;</p> 
      </td>
      <td width="380"><p>&nbsp;</p>
      
      <div align="center">
      <p><font color="#000066" size="+1"><a href="cadastrar-projeto.jsp">Cadastrar Projeto.</a></font></p>      
      <p><font color="#000066" size="+1"><a href="consultar-projeto.jsp">Consultar Projeto.</a></font></p>
          
      <form action="relatorioProjetos"><input type="submit" value="Emitir Relatorio Projetos" /></form>     
      </div>
      <p>&nbsp;</p> 
      </td>
      </tr>
      </table>
          
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
