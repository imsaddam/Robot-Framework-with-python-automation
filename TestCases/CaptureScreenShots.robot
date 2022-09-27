*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${chrome_browser}  chrome
# ${edge_browser}   edge
# ${firefox_browser}  firefox

${url}  https://practice.automationtesting.in/my-account/


*** Test Cases ***
Login with valid credentials
    [Documentation]  This test case will login with valid credentials
    Open Browser  ${url}  ${chrome_browser}
    Maximize Browser Window
    Input Text    id:username    admin
    Input Text    id:password    admin123
    # Click Button  xpath://button[@type='submit']
    
    Capture Element Screenshot    xpath://img[@alt='Site Logo']    E:/Testing/RobotFrameworkTest/ScreenShots/logo.png
    Capture Page Screenshot    E:/Testing/RobotFrameworkTest/ScreenShots/login_page.png

    Close Browser


    

*** Keywords ***