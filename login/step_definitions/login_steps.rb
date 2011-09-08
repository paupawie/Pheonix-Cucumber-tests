require "watir-webdriver"
require "rspec/expectations"
load 'config/definitions.rb'

Given /^I go to homepage$/ do
  @browser ||= Watir::Browser.new :firefox
  @browser.goto($homepage)
end

When /^I type "([^"]*)" in ([^"]*)$/ do |username, target|
  @browser.text_field(:name => target).set username
end

Then /^I should be able to login$/ do
  @browser.button(:id, "submitbtn").click
  @browser.div(:id => "main_container").wait_until_present
  @browser.div(:id => "main_container").should exist
  @browser.close
end

Then /^I should not be able to login$/ do
  @browser.button(:id, "submitbtn").click
  @browser.h2(:text, "You've entered an invalid username/password").wait_until_present
  @browser.h2(:text, "You've entered an invalid username/password").should exist
  @browser.close
end

Then /^I should see the ([^"]*) field$/ do |target|
  @browser.text_field(:name => target).should exist
  @browser.close
end

