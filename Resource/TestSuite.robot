*** Settings ***
Resource  setup.robot
Resource  ../Tests/GoogleTests.robot

*** Keywords ***
Run Test Suite
    [Arguments]   ${BROWSER}  ${BROWSER_VERSION}  ${OS}  ${OS_VERSION}
		Should Navigate To Google And Search For BrowserStack  BROWSER=${BROWSER}  BROWSER_VERSION=${BROWSER_VERSION}  OS=${OS}  OS_VERSION=${OS_VERSION}


