*** Settings ***
Library        SeleniumLibrary
Resource       ../Resources/CommonKeyowrds.robot


*** Variables ***
${URL}        https://demo.nopcommerce.com/login?returnUrl=%2F
${BROWSER}    chrome


*** Test Cases ***
Open default browser
    ${PageTitle}=    Launch Browser    ${URL}    ${BROWSER}
    Log To Console    message=${PageTitle}
    Log    message=${PageTitle}
    Sleep    3

Scrolling Test
    Scrolling action
