*** Settings ***
Resource  ../Resource/setup.robot
Suite Teardown    Close Browser
Force Tags    BrowserStack

*** Test Cases ***
Should Navigate To Google And Search For BrowserStack
	  Open Google  BROWSER=Chrome  BROWSER_VERSION=50.0  OS=Windows  OS_VERSION=7
		Enter Search Term
	  Click Submit
	  sleep    ${Delay}
	  Check Title
	  [Teardown]    Close Browser