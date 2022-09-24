*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${browser}  chrome
${url}  https://demo.nopcommerce.com/


*** Test Cases ***
TestingInputBox
    Open Browser  ${url}  ${browser}
    Maximize Browser Window        # maximize the browser window
    
    Click Link    xpath://a[@class='ico-register']     # Click on Register link
    Select Radio Button    Gender    M     # Gender is the name of the radio button and M is the value of the radio button
