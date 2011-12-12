Feature: US-1
	In order to check if I can do something
	As an analyst
	I want to see of I can perform an action
	
	Scenario: Allowed to execute
		Given a standard data collection
		And a context of (CP, Secret, Delta, nil, SIPRNet, SE, Terminal, City-Kabul)
		When I attempt to view that data collection
		Then I can only see Blue Force Tracker data (Kabul)
		And DOD Humint
	
	Scenario: Not allowed to execute
	
