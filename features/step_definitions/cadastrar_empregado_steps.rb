


Dado("que eu esteja no site do Oragehrm") do
  visit 'http://opensource.demo.orangehrmlive.com/'
end

Quando("acessar a página Add Employee") do
  
  fill_in('txtUsername', :with => 'Admin')
  fill_in('txtPassword', :with => 'admin')	
  click_button('btnLogin')		
  click_link('menu_pim_viewPimModule')
  click_link('menu_pim_addEmployee')
end

Quando("realizar o cadastro do empregado") do
  fill_in('firstName',:with => 'Josenildo')
  fill_in('middleName',:with => 'Antunes')
  fill_in('lastName',:with => 'Tavares')
  fill_in('employeeId',:with => '8888')
  click_button('btnSave')
end

Então("o cadastro é realizado com sucesso") do
	assert_text('Josenildo')
	assert_text('Tavares')
	assert_text('Personal Details')

	Capybara.current_session.driver.quit
end