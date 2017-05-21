Dado(/^que esteja no site http:\/\/opensource\.demo\.orangehrmlive\.com\/$/) do
	visit 'http://opensource.demo.orangehrmlive.com/'	
end

Quando(/^preencher os dados do novo empregado$/) do
	fill_in('txtUsername', :with => 'admin')
	fill_in('txtPassword', :with => 'admin')
	click_button('btnLogin')

	click_link('menu_pim_viewPimModule')
	click_link('menu_pim_addEmployee')

	fill_in('firstName', :with => 'Regina')
	fill_in('middleName', :with => 'Keiko')
	fill_in('lastName', :with => 'Kita Kurimoto')
	check('chkLogin')
	fill_in('user_name', :with => 'reginak')
	fill_in('user_password', :with => 'keiko')
	fill_in('re_password', :with => 'keiko')
	select('Enabled', :from => 'status')	

end

Então(/^cadastrar novo empregado$/) do
  	click_button('btnSave')
end