*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${chrome_browser}  chrome
# ${edge_browser}   edge
# ${firefox_browser}  firefox

${url}  https://demo.automationtesting.in/Windows.html


*** Test Cases ***
Navigation url
    [Documentation]  This test case will navigate to the url
    
    Open browser with url
    ${location}=     Get Location    # Get the current location of the browser
    Log To Console   ${location}    # Print the location to the console
    Sleep    3
    

    Go to google url
    ${location}=     Get Location    # Get the current location of the browser
    Log To Console   ${location}    # Print the location to the console
    
    
    
    Sleep    3         # Sleep for 3 seconds
    Go Back            # Go back to the previous page
    ${location}=     Get Location
    Log To Console   ${location}

    Close Browser      # Close the browser


    

*** Keywords ***

Open browser with url
    [Documentation]  This keyword will open the browser with the url
    Open Browser  ${url}  ${chrome_browser}
    Maximize Browser Window

Go to google url
    [Documentation]  This keyword will navigate to the google url
    Go To    https://www.google.com/