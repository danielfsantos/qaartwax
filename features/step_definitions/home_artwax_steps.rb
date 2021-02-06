home_artwax = HomeArtwaxPage.new

Dado(/^que estou na pagina inicial da artwax$/) do
   home_artwax.load
end

Quando(/^selecionar o menu categorias$/) do
   home_artwax.menu_categorias.click
 end
 
 Quando(/^selecionar o submenu lixeira automotiva$/) do
   home_artwax.wait_until_submenu_lixeira_automotiva_visible
   home_artwax.submenu_lixeira_automotiva.click
 end
 
 Então(/^a pagina lixeira automotiva e acessada com sucesso$/) do
   expect(home_artwax). to have_titulo_page_lixeira_automotiva
 end