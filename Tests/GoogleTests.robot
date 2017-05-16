*** Variables ***
${SiteUrl}        http://www.google.com
${SearchTerm}     BrowserStack
${SearchPageTitle}    ${SearchTerm} - Google Search
${Delay}          5s
${NAME}        Simple Google Search

*** Keywords ***
Should Navigate To Google And Search For BrowserStack
    [Arguments]   ${BROWSER}  ${BROWSER_VERSION}  ${OS}  ${OS_VERSION}
	  Open Google  BROWSER=${BROWSER}  BROWSER_VERSION=${BROWSER_VERSION}  OS=${OS}  OS_VERSION=${OS_VERSION}
		Enter Search Term
	  Click Submit
	  sleep    ${Delay}
	  Check Title
	  Close Browser