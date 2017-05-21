Quando(/^efetuar edicao de um empregado existente na lista de empregado$/) do
  visit 'http://opensource.demo.orangehrmlive.com/'
end

Quando(/^clicar em Salvar$/) do
  	fill_in('txtUsername', :with => 'admin')
	fill_in('txtPassword', :with => 'admin')
	click_button('btnLogin')

	click_link('menu_pim_viewPimModule')
	click_link('menu_pim_viewEmployeeList')

	#Procurar Regina na lista
	fill_in('empsearch_employee_name_empName', :with => 'Regina')
	click_button('searchBtn')

	#Clicar no link Regina Keiko
	click_link('Regina Keiko')

	#Clicar no botão Edit
	click_button('btnSave')

	#Complementar o cadastro
	fill_in('personal_txtOtherID', :with => '12345')
	fill_in('personal_txtLicenNo', :with => '54321')
	fill_in('personal_txtLicExpDate', :with => '2018-05-01')
	choose('personal_optGender_2')
	select('Married', :from => 'personal_cmbMarital')    
	select('Brazilian', :from => 'personal_cmbNation')    	
	fill_in('personal_DOB', :with => '2001-02-02')
end

Então(/^a edição será efetuada$/) do
	click_button('btnSave')
end