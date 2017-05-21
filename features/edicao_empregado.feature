#language: pt
#utf-8

@edicao
Funcionalidade: Editar um empregado existente na Lista de Empregado
	Eu como usuario
	Quero acessar o site http://opensource.demo.orangehrmlive.com/
	Para editar empregado cadastrado

Cenario: Editar um empregado existente na Lista de Empregado
	Dado que esteja no site http://opensource.demo.orangehrmlive.com/
	Quando efetuar edicao de um empregado existente na lista de empregado
	E clicar em Salvar
	Então a edição será efetuada
