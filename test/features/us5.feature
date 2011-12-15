Feature: US-5
	In order to examine a situational context
	As an analyst (user S4)
	I want to view data associated with a given context
	(S4, TS/SCE, Bravo, Zebra, JWICS, SE, Terminal, Country/Afganistan)
	
	Scenario: Analyst checks for access
  Scenario: Analyst queries about undisplayed data
  
  Scenario: Analyst views combined data
    Given National Data
    And BFT Data
    And DoD HUMINT
    And CIDNE Data
    And NSA HUMINT
    And context: (S4, TS/SCE, Bravo, Zebra, JWICS, SE, Terminal, Country/Afganistan)
    When S4 views data collection
    Then S4 can view BFT (Country/Afganistan)
    And S4 can view CIDNE (Country/Afganistan)
    And S4 can view DoD HUMINT (unlimited)
    And S4 can view National Data (unlimited)
    But S4 can not view NSA HUMINT
