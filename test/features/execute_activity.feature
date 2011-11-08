Feature: Execute Action
	In order to execute an action
	as an analyst
	I want to see the results of a successful execution
	
	Scenario: Can execute action
		Given an activity
		When I submit that activity to the UMM
		Then that activity executes

	Scenario: Cannot execute action