Feature: US-1
	In order to examine a situational context
	As an analyst (user CP)
	I want to view data associated with the context:
	(CP, Secret, Delta, nil, SIPRNet, SE, Terminal, City/Kabul)
	
	Scenario: Analyst checks for access
	Scenario: Analyst queries about undisplayed data
	
	Scenario: Analyst views combined data
    Given National Data
    And BFT Data
    And DoD HUMINT
    And CIDNE Data
    And NSA HUMINT
		And a context of (CP, Secret, Delta, nil, SIPRNet, SE, Terminal, City/Kabul)
		When CP views data collection
		Then CP can view BFT (City/Kabul)
		And CP can view DOD Humint (unlimited)
		But CP can not view CIDNE
		But CP can not view NSA HUMINT
		But CP can not view National Data
	
