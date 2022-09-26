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

    Click Element  xpath://a[@href='http://www.selenium.dev']//button[@class='btn btn-info'][normalize-space()='click']

    Switch Window  URL= https://www.selenium.dev/
    

    Close All Browsers



*** Keywords ***