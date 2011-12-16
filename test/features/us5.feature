Feature: US-5
	In order to examine a situational context
	As an analyst (user SF)
	I want to view data associated with a given context
	(SF, TS/SCE, Bravo, Zebra, JWICS, SE, Terminal, Country/Afganistan)
	
	Scenario: Analyst checks for access
  Scenario: Analyst queries about undisplayed data
  
  Scenario: Analyst views combined data
    Given National Data
    And BFT Data
    And DoD HUMINT
    And CIDNE Data
    And NSA HUMINT
    And context: (SF, TS/SCE, Bravo, Zebra, JWICS, SE, Terminal, Country/Afganistan)
    When SF views data collection
    Then SF can view BFT (Country/Afganistan)
    And SF can view CIDNE (Country/Afganistan)
    And SF can view DoD HUMINT (unlimited)
    And SF can view National Data (unlimited)
    But SF can not view NSA HUMINT
