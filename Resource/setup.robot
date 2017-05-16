*** Settings ***
Library           Selenium2Library

*** Variables ***
${BS_User}    %{BROWSERSTACK_USERNAME}
${BS_Key}     %{BROWSERSTACK_ACCESS_KEY}
${RemoteUrl}    http://${BS_User}:${BS_Key}@hub.browserstack.com/wd/hub
${PROJECT}     AirBnB demo
${BUILD}       [robot] first test

*** Keywords ***
Open Google
    [Arguments]   ${BROWSER}  ${BROWSER_VERSION}  ${OS}  ${OS_VERSION}
	  Open Browser   url=${SiteUrl}   browser=${BROWSER}   remote_url=${RemoteURL}   desired_capabilities=browser:${BROWSER},browser_version:${BROWSER_VERSION},os:${OS},os_version:${OS_VERSION},project:${PROJECT},build:${BUILD},name:${NAME}

Enter Search Term
	  Input Text    name=q    ${SEARCH_TERM}

Click Submit
	  Click Button    name=btnG

Check Title
	  Title Should be    ${SearchPageTitle}
