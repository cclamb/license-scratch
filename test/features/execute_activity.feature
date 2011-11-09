Feature: Execute Action
	In order to execute an action
	as an analyst
	I want to see the results of a successful execution
	
	Scenario: Can execute action
		Given a new context
		And an analyst
		And an activity
		And a client context
		And a license
		And a corresponding "false" action
		When the analyst submits that activity
		Then action is executed

	Scenario: Cannot execute action