*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${chrome_browser}  chrome
# ${edge_browser}   edge
# ${firefox_browser}  firefox

${url}  https://demo.automationtesting.in/Windows.html


*** Test Cases ***
TabbedWindowTest
    Open Browser  ${url}  ${chrome_browser}        # open chrome browser
    Maximize Browser Window

    Click Element  xpath://*[@id="Tabbed"]/a/button

     
    
    Close All Browsers

    

*** Keywords ***