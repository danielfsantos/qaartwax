class HomeArtwaxPage < SitePrism::Page
      set_url $URL  
      element :menu_categorias, :xpath, './/li/a[@class="icon-show"]//div[contains(text(),"Categorias")]'
      element :submenu_lixeira_automotiva, :xpath, '//a[contains(text(),"LIXEIRA AUTOMOTIVA")]'
      element :titulo_page_lixeira_automotiva, :xpath, './/h1[contains(text(),"LIXEIRA AUTOMOTIVA")]'
end