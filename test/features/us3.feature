Feature: US-3
	In order to examine a situational context
	As an analyst (user ST)
	I want to view data associated with the context:
	(ST, TS/SCI, Alpha, Foxtrot, NSANet, SE, Terminal, Province/Helmand)
	
  Scenario: Analyst checks for access
  Scenario: Analyst queries about undisplayed data
  
  Scenario: Analyst views combined data
    Given National Data
    And BFT Data
    And DoD HUMINT
    And CIDNE Data
    And NSA HUMINT
    And context: (ST, TS/SCI, Alpha, Foxtrot, NSANet, SE, Terminal, Province/Helmand)
    When ST views data collection
    Then ST can view BFT (Province/Helmand)
    And ST can view CIDNE (Province/Helmand)
    And ST can view DoD HUMINT (unlimited)
    And ST can view National Data (unlimited)
    And ST can view NSA HUMINT (unlimited)
