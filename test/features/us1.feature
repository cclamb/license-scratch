Feature: US-1
	In order to examine a situational context
	As an analyst (user CP)
  With a context:
	(CP, Secret, Delta, nil, SIPRNet, SE, Terminal, City/Kabul)
	I want to check my access, query about denied access, and view data.
	
	Scenario: Analyst checks for access
	  Given an initial data set of (ND, BFT, DoDH, CIDNE, NSAH)
    And a context of (CP, Secret, Delta, nil, SIPRNet, SE, Terminal, City/Kabul)
    When CP checks to see what data he can access
    Then CP can access BFT (City/Kabul)
		And CP can access DOD Humint (unlimited)
		But CP can not access CIDNE
		But CP can not access NSA HUMINT
		But CP can not access National Data
	
	Scenario: Analyst queries about undisplayed data
	  Given an initial data set of (ND, BFT, DoDH, CIDNE, NSAH)
    And a context of (CP, Secret, Delta, nil, SIPRNet, SE, Terminal, City/Kabul)
    When CP queries to see why he cannot access CIDNE, NSA HUMINT, and National Data
    Then he is given a list of causes for lack of access
	
	Scenario: Analyst views combined data
    Given an initial data set of (ND, BFT, DoDH, CIDNE, NSAH)
		And a context of (CP, Secret, Delta, nil, SIPRNet, SE, Terminal, City/Kabul)
		When CP views data collection
		Then CP can view BFT (City/Kabul)
		And CP can view DOD Humint (unlimited)
		But CP can not view CIDNE
		But CP can not view NSA HUMINT
		But CP can not view National Data
	
