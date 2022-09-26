*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${chrome_browser}  chrome
# ${edge_browser}   edge
# ${firefox_browser}  firefox

${url}  https://testautomationpractice.blogspot.com/


*** Test Cases ***
TestingSpeed
    Open Browser  ${url}  ${chrome_browser}        # open chrome browser
    Maximize Browser Window

    Click Element    xpath://*[@id="HTML9"]/div[1]/button    # click on the link
    sleep  2

    # Handle Alert    accept    # accept the alert
    # Handle Alert    dismiss    # dismiss the alert

    #  Handle Alert    leave    # leave the alert

    # Alert Should Be Present    Press a button!          # check if alert is present
    Alert Should Not Be Present    Press a button!       # check if alert is not present
    




    Close Browser



*** Keywords ***