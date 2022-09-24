*** Settings ***
Documentation    This is a test suite for testing the login functionality of the application.
Library    SeleniumLibrary  

*** Variables ***
${BROWSER}    chrome
${URL}    https://demo.nopcommerce.com/


*** Test Cases ***
LoginTest
    Open Browser       ${URL}    ${BROWSER}
    loginToApplication
    close browser    
    
    
    
    



*** Keywords ***
loginToApplication
    Click Link    xpath=//a[@class='ico-login']
    Input Text    id:Email    test@gmail.com
    Input Text    id:Password    Test@12345
    Click Element    xpath=//button[normalize-space()='Log in']

