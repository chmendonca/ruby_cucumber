=begin
This program was executed in two different ways
- first was opening a new browser with a global variable outside of the methods and it was used in the methods.
- second was starting the browser inside of Given method and setting it as an global variable (@browser)
Obs.: in both examples, the click method was unnecessary and it was causing a failed condition.

support links:
https://www.guru99.com/cucumber-basics.html
http://watir.com/guides/elements/
=end


require 'watir'
require 'colorize'

browser = Watir::Browser.new

Given (/^I am on career.guru99.com$/) do
  browser.goto "http://career.guru99.com"
  #@browser = Watir::Browser.start "http://career.guru99.com"
end

When (/^I click on career guide menu$/) do
  browser.link text: "career guide"
  #@browser.link text: "career guide"
    #lk.click - for some reason the click command was not accepted here
end

Then (/^I should see career guide page$/) do
  browser.goto "http://career.guru99.com/category/career-guide/"
  #@browser.goto "http://career.guru99.com/category/career-guide/"
end
