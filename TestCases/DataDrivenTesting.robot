*** Settings ***
Library           SeleniumLibrary
Resource          ../Resources/LoginKeywords.robot

Suite Setup       Open Default Browser
Suite Teardown    Close Browsers
Test Template     Invalid Login

*** Test Cases ***                USERNAME                    PASSWORD
Right user empty pass           admin@yourstore.com             ${EMPTY}
Right user wrong pass           admin@yourstore.com                xyz
Wrong user right pass           adm@yourstore.com                admin
Wrong user wrong pass           adm@yourstore.com                xyz
Wrong user empty pass           adm@yourstore.com                ${EMPTY}





*** Keywords ***
Invalid Login
    [Arguments]    ${username}    ${password}
    Input Unsername    ${username}
    Sleep    2
    Input Pwd    ${password}
    Sleep    2
    Click Login Button
    Sleep    2
    Error Message Should Be Displayed