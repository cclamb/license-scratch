Feature: US-4
	In order to examine a situational context
	As an analyst (user ST)
	I want to view data associated with the context:
	(ST, TS/SCI, Alpha, Yankee, NSANet, SE, Terminal, Province/Kandahar)
	
	Scenario: Analyst checks for access
  Scenario: Analyst queries about undisplayed data
  
  Scenario: Analyst views combined data
    Given National Data
    And BFT Data
    And DoD HUMINT
    And CIDNE Data
    And NSA HUMINT
    And context: (ST, TS/SCI, Alpha, Yankee, NSANet, SE, Terminal, Province/Kandahar)
    When ST views data collection
    Then ST can view BFT (Province/Kandahar)
    And ST can view CIDNE (Province/Kandahar)
    And ST can view DoD HUMINT (unlimited)
    And ST can view National Data (unlimited)
    And ST can view NSA HUMINT (unlimited)
