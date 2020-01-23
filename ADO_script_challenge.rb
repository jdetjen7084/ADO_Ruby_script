#Coding challenge for Arch DevOps
#Use Ruby and Watir to create a script to login to LinkedIn and send a message to Michael "Fritz" Fritzius


require 'watir'

#'Ruby/ADO' is the directory/file where I have a JSON file with LinkedIn username and password
require 'Ruby/ADO'

#The error messages I was getting led me to understand I had a driver problem
#I did not push the webdriver file to GitHub: It's just on my local machine
#require 'selenium-webdriver'
#Selenium:Webdriver::Chrome.driver_path="C:/Users/spook/Code/Ruby/ADO_challenge"
#require 'watir-webdriver'

#My last LinkedIn message was to Michael so no need to search: just go directly to messages from the nav
browser = Watir::Browser.new :chrome
browser.goto 'https://www.linkedin.com/login?fromSignIn=true&trk=guest_homepage-basic_nav-header-signin'
browser.text_field(:id => 'username').set 'username'
browser.text_field(:id => 'password').set 'password'
browser.button(:type => 'submit').click
browser.button(:id => 'messaging-nav-item').click
browser.p(:visible_text => 'Write a message...').set 'Thank you for the opportunity to learn about Ruby and Watir! This is my first experience with both!'
browser.button(:type => 'submit').click

#However if search is required, then:
browser = Watir::Browser.new :chrome
browser.goto 'https://www.linkedin.com/login?fromSignIn=true&trk=guest_homepage-basic_nav-header-signin'
browser.text_field(:id => 'username').set 'username'
browser.text_field(:id => 'password').set 'password'
browser.button(:type => 'submit').click
browser.input(:aria_label => 'Search').set 'Michael "Frtiz" Fritzius'
browser.send_keys :enter
browser.button(:class => 'message-anywhere-button').click
browser.p(:visible_text => 'Write a message...').set 'Thank you for the opportunity to learn about Ruby and Watir! This is my first experience with both!'
browser.button(:type => 'submit').click

