require_relative '../../../lib/license/usage_management_mechanism'
require_relative '../../../lib/license/interpreter'
require_relative '../../../lib/license/context_manager'
require_relative '../../../lib/license/ontology_manager'

is_read = false

test = {
  :bundle => {
    :activity => nil,
    :client_ctx => nil,
    :license => nil
  },
  :user => nil,
  :activity => nil,
  :map => {
    :read => ->(){ is_read = true }
  }
}

class TestLicence
  def can_execute_action(action)
    case action
      when :play then false
      when :read then true
      else false
    end
  end
end

def generate_false_action
  
end

def generate_true_action
  
end

Given /^a new context$/ do
  @umm = UsageManagementMechanism.new(
    Interpreter.new,
    ContextManager.new,
    OntologyManager.new
  )
end

Given /^an analyst$/ do
  test[:user] = 'analyst'
end

Given /^an activity$/ do
  test[:activity] = :read
end

Given /^a client context$/ do
  test[:bundle][:client_ctx] = { :os => :windows, :device => :workstation}
end

Given /^a license$/ do
  pending # express the regexp above with the code you wish you had
end

When /^the analyst submits that activity$/ do
  pending # express the regexp above with the code you wish you had
end

Then /^action is executed$/ do
  pending # express the regexp above with the code you wish you had
end

Given /^a corresponding "([^"]*)" action$/ do |arg1|
  pending # express the regexp above with the code you wish you had
end


