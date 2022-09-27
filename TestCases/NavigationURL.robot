*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${chrome_browser}  chrome
# ${edge_browser}   edge
# ${firefox_browser}  firefox

${url}  https://demo.automationtesting.in/Windows.html


*** Test Cases ***
Navigation url
    [Documentation]  This test case will navigate to the url
    
    Open Browser  ${url}  ${chrome_browser}
    Maximize Browser Window
    
    ${location}=     Get Location
    Log To Console   ${location}

    Go To    https://www.google.com/
    ${location}=     Get Location
    Log To Console   ${location}
    

    Sleep    3
    Go Back
    ${location}=     Get Location
    Log To Console   ${location}

    

*** Keywords ***