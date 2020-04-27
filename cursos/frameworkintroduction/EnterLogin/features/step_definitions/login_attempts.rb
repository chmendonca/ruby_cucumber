require 'watir'
require 'colorize'

browser = Watir::Browser.new

Given (/^I am on Guru99 page first attempt$/) do
  browser.goto "http://demo.guru99.com"
end
When (/^I don't enter the email to register$/) do
  browser.button(:name=> 'btnLogin').click
end
Then (/^error message will be shown$/) do
  puts 'E-mail required fail'.red
end

Given (/^I am on Guru99 page second attempt$/) do
  browser.goto "http://www.guru99.com"
  browser.goto "http://demo.guru99.com"
end
When (/^I enter the email to register$/) do
  browser.text_field(:name=> 'emailid').set('guru99@gmail.com')
  browser.button(:name=> 'btnLogin').click
  puts 'clicked'
end
Then (/^login details will be shown$/) do
  puts 'Registered'.green
end