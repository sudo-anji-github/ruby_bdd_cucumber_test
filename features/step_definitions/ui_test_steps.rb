
Given(/^I opened '(.*)'$/) do |site|
  @driver.get site
end

When(/^I search a '(.*)'$/) do |keyword|
  element = @driver.find_element :name => "q"
  element.send_keys keyword
  element.submit
end

Then(/^I should see the browser title as '(.*)'$/) do |result|
  p "Page title is #{@driver.title}"
  wait = Selenium::WebDriver::Wait.new(:timeout => 10)
  wait.until { @driver.title.downcase.start_with? "cheese!" }
  p "Page title is #{@driver.title}"
  sleep(10)
  p @driver.title.include?(result)
end