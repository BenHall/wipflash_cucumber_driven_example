Then /^the basket should contain "([^\"]*)"$/ do |product|
  combo = @main_window.find_ListBox "basketOutput"
  combo.items[0].should include(product)
end

Then /^the basket should be empty$/ do
  combo = @main_window.find_ListBox "basketOutput"
  combo.items.length.should == 0
end