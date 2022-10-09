*** Settings ***
Library           SeleniumLibrary

*** Variables ***

${BROWSER}        chrome
${URL}            https://swisnl.github.io/jQuery-contextMenu/demo.html

*** Test Cases ***
MouseAction
    # Context menu by mouse right click
    Open defualt browser
    Context Menu by mouse right click

    # Double click action
    Double click action

    #Drag and drop action
    Drag and drop action
    
    Close All Browsers
    

*** Keywords ***
Open defualt browser
    Open Browser    ${URL}    ${BROWSER}
    Maximize Browser Window

Context Menu by mouse right click
    Open Context Menu    xpath:/html/body/div/section/div/div/div/p/span
    sleep    3

Double click action
    Go To    https://testautomationpractice.blogspot.com/
    Double Click Element    xpath://*[@id="HTML10"]/div[1]/button
    sleep    3


Drag and drop action
    Go To    http://dhtmlgoodies.com/scripts/drag-drop-custom/demo-drag-drop-3.html
    Drag And Drop    id:box6    id:box106
    sleep    3

