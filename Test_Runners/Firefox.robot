*** Settings ***
Resource  ../Resource/TestSuite.robot
Resource  ../Resource/setup.robot
Force Tags    BrowserStack

*** Test Cases ***
Run Chrome Tests
		Run Test Suite  BROWSER=Firefox  BROWSER_VERSION=50.0  OS=Windows  OS_VERSION=7
	  [Teardown]
