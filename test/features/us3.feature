Feature: US-3
	In order to examine a situational context
	As an analyst (user S2)
	I want to view data associated with the context:
	(S2, TS/SCI, Alpha, Foxtrot, NSANet, SE, Terminal, Province/Helmand)
	
  Scenario: Analyst checks for access
  Scenario: Analyst queries about undisplayed data
  
  Scenario: Analyst views combined data
    Given National Data
    And BFT Data
    And DoD HUMINT
    And CIDNE Data
    And NSA HUMINT
    And context: (S2, TS/SCI, Alpha, Foxtrot, NSANet, SE, Terminal, Province/Helmand)
    When S2 views data collection
    Then S2 can view BFT (Province/Helmand)
    And S2 can view CIDNE (Province/Helmand)
    And S2 can view DoD HUMINT (unlimited)
    And S2 can view National Data (unlimited)
    And S2 can view NSA HUMINT (unlimited)
