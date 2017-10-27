#language: pt
#utf-8

@site
Funcionalidade: Site Orangehrm
	Eu como usuário do site
	Quero acessar os recursos do site
	Para verificar a conformidade das funcionalidades

	@cadastro
	Cenario: Efetuar cadastro
	Dado que eu esteja no site do Oragehrm
	Quando acessar a página Add Employee
	E realizar o cadastro do empregado
	Então o cadastro é realizado com sucesso


	@editar
	Cenario: Editar empregado
	Dado que eu esteja no site do Oragehrm na página de login
	Quando acessar a página Employee List
	E editar um empregado
	Então a edição é realizada com sucesso