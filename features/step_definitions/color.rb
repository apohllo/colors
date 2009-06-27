require 'spec/expectations'
require 'lib/nlp'

Given /I have a string "([^"]*)"/ do |str|
  @string = str
end

When /I highlight it$/ do 
  @result = @string.hl
end

Then /I should receive "([^"]*)"/ do |str|
  @result.should == str
end
