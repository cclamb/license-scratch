Feature: US-4
	In order to examine a situational context
	As an analyst (user S2)
	I want to view data associated with the context:
	(S2, TS/SCI, Alpha, Yankee, NSANet, SE, Terminal, Province/Kandahar)
	
	Scenario: Analyst checks for access
  Scenario: Analyst queries about undisplayed data
  
  Scenario: Analyst views combined data
    Given National Data
    And BFT Data
    And DoD HUMINT
    And CIDNE Data
    And NSA HUMINT
    And context: (S2, TS/SCI, Alpha, Yankee, NSANet, SE, Terminal, Province/Kandahar)
    When S2 views data collection
    Then S2 can view BFT (Province/Kandahar)
    And S2 can view CIDNE (Province/Kandahar)
    And S2 can view DoD HUMINT (unlimited)
    And S2 can view National Data (unlimited)
    And S2 can view NSA HUMINT (unlimited)
