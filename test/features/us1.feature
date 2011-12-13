Feature: US-1
	In order to examine a situational context
	As an analyst
	I want to view data associated with a given context
	
	Scenario: Analyst checks for access
	
	Scenario: Analyst views combined data
		Given a standard data collection
		And a context of (CP, Secret, Delta, nil, SIPRNet, SE, Terminal, City-Kabul)
		When I attempt to view that data collection
		Then I can only see Blue Force Tracker data (Kabul)
		And DOD Humint
	
