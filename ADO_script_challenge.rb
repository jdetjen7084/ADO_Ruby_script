

require 'watir'
#require 'Ruby/ADO'
#require 'selenium-webdriver'
#Selenium:Webdriver::Chrome.driver_path="C:/Users/spook/Code/Ruby/ADO_challenge"
#require 'watir-webdriver'
browser = Watir::Browser.new :chrome
browser.goto 'https://www.linkedin.com/login?fromSignIn=true&trk=guest_homepage-basic_nav-header-signin'

browser.text_field(:id => 'username').set #username goes here in single quotes#
browser.text_field(:id => 'password').set #password goes here in single quotes#
browser.button(:type => 'submit').click

browser.text_field(:id => 'search-input').set 'Michael "Fritz" Fritzius'
browser.send_keys :enter

