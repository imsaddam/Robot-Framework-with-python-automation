*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${chrome_browser}  chrome
${edge_browser}   edge
${firefox_browser}  firefox

${url}  https://demowebshop.tricentis.com


*** Test Cases ***
TestingSpeed
    Open Browser  ${url}  ${chrome_browser}        # open chrome browser
    Maximize Browser Window

    Open Browser  ${url}  ${edge_browser}            # open edge browser
    Maximize Browser Window

    Open Browser  ${url}  ${firefox_browser}           # open firefox browser
    Maximize Browser Window

    Click Link    xpath://a[@class='ico-register']
    
    FillUpRegistrationForm
   

    Close All Browsers



*** Keywords ***
FillUpRegistrationForm
    Select Radio Button    Gender    M
    Input Text    name:FirstName    John
    Input Text    name:LastName    Doe
    Input Text    name:Email    test@gmail.com
    Input Text    name:Password    123456
    Input Text    name:ConfirmPassword    123456
