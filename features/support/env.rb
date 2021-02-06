require 'capybara'
require 'capybara/cucumber'
require 'capybara/rspec'
require 'selenium-webdriver'
require 'site_prism'

RSpec.configure do |config|
	config.include Capybara::DSL, :type => :request
  end

Capybara.register_driver :selenium do |app|
	capabilities = Selenium::WebDriver::Remote::Capabilities.chrome('chromeOptions' => { 'args' =>['--start-maximized']})
	Capybara::Selenium::Driver.new(app, :browser => :chrome, desired_capabilities: capabilities)
end

Capybara.default_driver = :selenium
Capybara.default_max_wait_time = 15