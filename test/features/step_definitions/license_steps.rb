require_relative '../../../lib/akira/usage_management_mechanism'
require_relative '../../../lib/akira/interpreter'
require_relative '../../../lib/akira/context_manager'
require_relative '../../../lib/akira/ontology_manager'

repository = nil
ctx = nil

def assemble_context
  {:user => 'cp',
  :clearance => 'secret',
  :role => :delta}
end

Given /^a standard data collection$/ do
  repository = nil
end

Given /^a context of \(CP, Secret, Delta, nil, SIPRNet, SE, Terminal, City\-Kabul\)$/ do
  ctx = assemble_context
end

When /^I attempt to view that data collection$/ do
  pending # express the regexp above with the code you wish you had
end

Then /^I can only see Blue Force Tracker data \(Kabul\)$/ do
  pending # express the regexp above with the code you wish you had
end

Then /^DOD Humint$/ do
  pending # express the regexp above with the code you wish you had
end



