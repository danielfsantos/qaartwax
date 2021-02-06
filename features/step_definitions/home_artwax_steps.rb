Dado(/^que estou na pagina categorias$/) do
   home_artwax = HomeArtwaxPage.new
   home_artwax.load

   home_artwax.menu_categorias.click
   home_artwax.wait_until_submenu_lixeira_automotiva_visible
   home_artwax.submenu_lixeira_automotiva.click
   expect(home_artwax). to have_titulo_page_lixeira_automotiva
end