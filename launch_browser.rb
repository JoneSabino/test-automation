# frozen_string_literal: true

require 'rubygems'
require 'selenium-webdriver'

Selenium::WebDriver::Chrome.driver_path = 'chromedriver.exe'
driver = Selenium::WebDriver.for :chrome

driver.navigate.to 'https://www.inmetrics.com.br'
linkcarreiras = driver.find_element(:id, 'linkcarreiras')
if linkcarreiras.displayed?
  linkcarreiras.click
else
  puts('elemento nao presente na tela')
end

puts 'Done'