*** Settings ***
Library           SeleniumLibrary


*** Variables ***

${URL}           https://demo.nopcommerce.com/
${BROWSER}       chrome


*** Keywords ***
Open Default Browser
    Open Browser    ${URL}    ${BROWSER}
    Maximize Browser Window
    Sleep    2

Close Browsers
    Close All Browsers

Open Login Page
    Click Link    xpath://a[@class='ico-login']
    #Go To    ${LOGINURL}

Input Unsername
    [Arguments]    ${username}
    Wait Until Element Is Visible    xpath://input[@id='Email']
    Input Text    xpath://input[@id='Email']    ${username}

Input Pwd
    [Arguments]    ${password}
    Wait Until Element Is Visible    xpath://input[@id='Password']
    Input Text    xpath://input[@id='Password']    ${password}

Click Login Button

    Click Element    xpath://button[contains(text(),'Log in')]

Error Message Should Be Displayed
    Page Should Contain    Login was unsuccessful
    


