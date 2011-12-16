require_relative '../../../lib/akira/usage_management_mechanism'
require_relative '../../../lib/akira/interpreter'
require_relative '../../../lib/akira/context_manager'
require_relative '../../../lib/akira/ontology_manager'
require_relative '../../../lib/akira/bundle'

repository = nil
ctx = nil

def assemble_context
  {:user => 'cp',
  :clearance => 'secret',
  :role => :delta}
end

Given /^an initial data set of \(ND, BFT, DoDH, CIDNE, NSAH\)$/ do
  pending
end

Given /^a context of \(CP, Secret, Delta, nil, SIPRNet, SE, Terminal, City\/Kabul\)$/ do
  pending # express the regexp above with the code you wish you had
end

When /^CP checks to see what data he can access$/ do
  pending # express the regexp above with the code you wish you had
end

Then /^CP can access BFT \(City\/Kabul\)$/ do
  pending # express the regexp above with the code you wish you had
end

Then /^CP can access DOD Humint \(unlimited\)$/ do
  pending # express the regexp above with the code you wish you had
end

Then /^CP can not access CIDNE$/ do
  pending # express the regexp above with the code you wish you had
end

Then /^CP can not access NSA HUMINT$/ do
  pending # express the regexp above with the code you wish you had
end

Then /^CP can not access National Data$/ do
  pending # express the regexp above with the code you wish you had
end

When /^CP queries to see why he cannot access CIDNE, NSA HUMINT, and National Data$/ do
  pending # express the regexp above with the code you wish you had
end

Then /^he is given a list of causes for lack of access$/ do
  pending # express the regexp above with the code you wish you had
end

When /^CP views data collection$/ do
  pending # express the regexp above with the code you wish you had
end

Then /^CP can view BFT \(City\/Kabul\)$/ do
  pending # express the regexp above with the code you wish you had
end

Then /^CP can view DOD Humint \(unlimited\)$/ do
  pending # express the regexp above with the code you wish you had
end

Then /^CP can not view CIDNE$/ do
  pending # express the regexp above with the code you wish you had
end

Then /^CP can not view NSA HUMINT$/ do
  pending # express the regexp above with the code you wish you had
end

Then /^CP can not view National Data$/ do
  pending # express the regexp above with the code you wish you had
end




