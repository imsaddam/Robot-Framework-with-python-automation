*** Settings ***
Library           SeleniumLibrary


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


Scrolling action
    Execute Javascript    window.scrollTo(0, document.body.scrollHeight);    # Scroll to bottom of the page
    Sleep    2
    Click Element    xpath:/html/body/div[6]/div[4]/div[1]/div[2]/ul/li[3]/a
    Sleep    2
    Execute Javascript    window.scrollTo(0, 0);    # Scroll to top of the page
    Sleep    2
    