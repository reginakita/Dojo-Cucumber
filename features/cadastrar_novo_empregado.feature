#language: pt
#utf-8

#@cadastro
Funcionalidade: Efetuar o cadastro de novo empregado
	Eu como usuario
	Quero acessar o site http://opensource.demo.orangehrmlive.com/
	Para cadastrar novo empregado

Cenario: Efetuar o cadastro de novo empregado
	Dado que esteja no site http://opensource.demo.orangehrmlive.com/
	Quando preencher os dados do novo empregado
	Então cadastrar novo empregado
