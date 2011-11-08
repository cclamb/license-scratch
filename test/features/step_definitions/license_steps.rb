
umm = nil
action = nil

Given /^an activity$/ do
  #pending # express the regexp above with the code you wish you had
  umm = UsageManagementMechanism.new
end

When /^I submit that activity to the UMM$/ do
  #pending # express the regexp above with the code you wish you had
  action = :some_action
end

Then /^that activity executes$/ do
  #pending # express the regexp above with the code you wish you had
  umm.execute(activity)
end
