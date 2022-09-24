*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${browser}  chrome
${url}  https://demo.nopcommerce.com/


*** Test Cases ***
TestingInputBox
    Open Browser  ${url}  ${browser}
    Maximize Browser Window
    Title Should Be    nopCommerce demo store
    Click Link    xpath://a[@class='ico-login']
    ${"email"}    Set Variable    id:Email


    Element Should Be Visible    ${"email"}
    Element Should Be Enabled    ${"email"}

    Input Text    ${"email"}    test@gmail.com
    Sleep    5
    clear element text    ${"email"}
    Sleep    3
    

    Close Browser



*** Keywords ***