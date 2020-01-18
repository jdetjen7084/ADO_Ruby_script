

require 'watir'
browser = watir::browser.new :firefox
browser.goto 'https://www.linkedin.com/login?fromSignIn=true&trk=guest_homepage-basic_nav-header-signin'

browser.text_field(:id => 'username').set #username goes here in single quotes#
browser.text_field(:id => 'password').set #password goes here in single quotes#
browser.button(:type => 'submit').click