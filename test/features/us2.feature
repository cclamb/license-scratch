Feature: US-2
	In order to examine a situational context
	As an analyst (user CP)
	I want to view data associated with the context:
	(CP, Secret, Delta, Zulu, SIPRNet, Blackberry OS, Handheld, City/Kabul)
	
  Scenario: Analyst checks for access
  Scenario: Analyst queries about undisplayed data
  
  Scenario: Analyst views combined data
    Given an initial data set of (ND, BFT, DoDH, CIDNE, NSAH)
    And context: (CP, Secret, Delta, Zulu, SIPRNet, Blackberry OS, Handheld, City/Kabul)
    When CP views data collection
    Then CP can view National Data (unlimited)
    And CP can view BFT (City/Kabul)
    But CP can not view DOD Humint
		But CP can not view CIDNE
		But CP can not view NSA HUMINT
