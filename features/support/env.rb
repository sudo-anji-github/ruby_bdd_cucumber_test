require 'selenium-webdriver'

Before do
  @driver  = Selenium::WebDriver.for :firefox
  @driver.manage.window.maximize
  @page=Page.new(@driver)
end

After do
  @driver.quit
end
