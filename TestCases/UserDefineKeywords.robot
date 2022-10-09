*** Settings ***
Library        SeleniumLibrary
Resource       ../Resources/CommonKeyowrds.robot


*** Variables ***
${URL}        https://demo.nopcommerce.com/login?returnUrl=%2F
${BROWSER}    chrome

*** Test Cases ***
Test Case 1
    ${PageTitle}=    Launch Browser    ${URL}    ${BROWSER}
    Log To Console    message=${PageTitle}
    Log    message=${PageTitle}
    Sleep    3
    User Input action
    Sleep    3

    Close Browser


