require 'spec/expectations'
require 'lib/colors'

Given /I have a string "([^"]*)"/ do |str|
  @string = str
end

When /I highlight "([^"]*)"$/ do |str|
  @result = @string.hl(:default,str)
end

When /I highlight it$/ do 
  @result = @string.hl
end

When /I highlight it with :([^ ]*)$/ do |sym|
  @result = @string.hl(sym.to_sym)
end

When /I highlight "([^"]*)" with :([^ ]*)$/ do |str,sym|
  @result = @string.hl(sym.to_sym,str)
end

Then /I should receive "([^"]*)"/ do |str|
  @result.should == str
end
