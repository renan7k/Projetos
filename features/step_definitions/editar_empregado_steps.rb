
Dado("que eu esteja no site do Oragehrm na página de login") do
	visit 'http://opensource.demo.orangehrmlive.com/'
end

Quando("acessar a página Employee List") do
  fill_in('txtUsername', :with => 'Admin')
  fill_in('txtPassword', :with => 'admin')	
  click_button('btnLogin')		
  click_link('menu_pim_viewPimModule')
  click_link('menu_pim_viewEmployeeList')
end

Quando("editar um empregado") do
  click_link('Josenildo')
  click_button('Edit')
  fill_in('personal[txtEmpFirstName]', :with => 'Débora', wait: 1)
  fill_in('personal[txtEmpLastName]', :with => 'Garcia', wait: 1)
  click_button('btnSave')
end

Então("a edição é realizada com sucesso") do
  assert_text('Successfully Saved')
end