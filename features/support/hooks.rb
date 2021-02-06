require 'pry'
$URL = "https://www.artwax.com.br/"
$dir_evidencias = Dir.pwd + "/evidencias"
$screen = 1
$utilities = UtilsCustomMethods.new

Before do |scenario|
   nome_cenario = scenario.name
   $dir_evidencias_cenario = $dir_evidencias += "/" + nome_cenario
   $utilities.create_directory $dir_evidencias_cenario
end

AfterStep do |scenario|
    screenshot =  $dir_evidencias_cenario + "/" + $screen.to_s + '.png'
    page.driver.browser.save_screenshot screenshot
    $screen+=1
end