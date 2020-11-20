require 'selenium-webdriver'

def start_browser
  caps = Selenium::WebDriver::Remote::Capabilities.new
  caps['browserName'] = 'chrome'
  caps['enableVNC'] = true
  @browser = Selenium::WebDriver.for(:remote,
                                     url: 'http://[selenoid_url]:[port]/wd/hub',
                                     desired_capabilities: caps)
  @browser.navigate.to 'https://google.com
  ele = @browser.find_element :xpath, '(//*[contains(.,"abonds")])[last()]'
  ele.click
end

def quit_browser
  @browser.quit
end
