package br.com.ceconsul;

import org.junit.After;
import org.junit.Before;
import org.junit.Test;

import com.thoughtworks.selenium.DefaultSelenium;
import com.thoughtworks.selenium.Selenium;

public class Projeto {
	
	private Selenium selenium;

	@Before
	public void setUp() throws Exception {
		selenium = new DefaultSelenium("localhost", 4444, "*chrome", "http://localhost:8080/");
		selenium.start();
	}

	@Test
	public void testCadastrarUsuario() throws Exception {
		selenium.open("/ceconsul2/menu.jsp");
		selenium.click("link=Cadastrar Funcionário.");
		selenium.waitForPageToLoad("30000");
		selenium.type("name=nome", "César de Sousa Junior");
		selenium.type("name=cpf", "02676563947");
		selenium.type("name=dataNascimento", "27/08/1979");
		selenium.type("name=salario", "4000");
		selenium.type("name=telefone", "998386616");
		selenium.click("document.cadastro.departamento[1]");
		selenium.click("document.cadastro.funcao[1]");
		selenium.type("name=usuario", "cesarj");
		selenium.type("name=senha", "11205");
		selenium.click("css=input[type=\"submit\"]");
		selenium.waitForPageToLoad("30000");
	}

	@After
	public void tearDown() throws Exception {
		selenium.stop();
	}

}
