*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${browser}  chrome
${url}  https://demowebshop.tricentis.com


*** Test Cases ***
TestingSpeed
    Open Browser  ${url}  ${browser}
    Maximize Browser Window
    Click Link    xpath://a[@class='ico-register']
    
    Set Selenium Speed    1 seconds  # 1 second delay for each action
    Wait Until Page Contains    Register       # wait until page contains Register text
    
    Select Radio Button    Gender    M
    Input Text    name:FirstName    John
    Input Text    name:LastName    Doe
    Input Text    name:Email    test@gmail.com
    Input Text    name:Password    123456
    Input Text    name:ConfirmPassword    123456


    Close Browser



*** Keywords ***