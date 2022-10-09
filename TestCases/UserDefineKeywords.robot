*** Settings ***
Library        SeleniumLibrary


*** Variables ***
${URL}        https://demo.nopcommerce.com/login?returnUrl=%2F
${BROWSER}    chrome

*** Test Cases ***
Test Case 1
    ${PageTitle}=    Launch Browser    ${URL}    ${BROWSER}
    Log To Console    message=${PageTitle}
    Sleep    3
    User Input action
    Sleep    3
   
    

    Close Browser


*** Keywords ***
Launch Browser
    [Arguments]    ${AppURL}    ${AppBROWSER}        # Define arguments
    Open Browser    ${AppURL}   ${AppBROWSER}        # Open browser and pass arguments
    Maximize Browser Window
    ${title}=    Get Title                # Get title of the page
    Log    ${title}
    [Return]    ${title}        # Return title of the page

User Input action 
    Input Text    id:Email    jon@demo.com
    Input Text    id:Password    123456
    
