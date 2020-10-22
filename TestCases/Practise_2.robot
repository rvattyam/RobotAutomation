*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${Browser}  Firefox
${URL}  https://www.thetestingworld.com

*** Test Cases ***
TestPractise
    OPEN BROWSER    ${URL}    ${Browser}
    maximize browser window
    execute javascript    window.scrollTo(0,1000)
    #perform Mouse Operations
    sleep    3 seconds
    execute javascript    window.scrollTo(0,0)
    #Right Click
    #open context menu    xpath://span[contains(text(),'CERTIFICATIONS')]
    sleep    3 seconds
    mouse over    xpath://span[contains(text(),'TUTORIAL')]
    mouse over    xpath://span[contains(text(),'FUNCTIONAL AUTOMATION')]
    sleep    3 seconds
    click element    css:[title='Selenium with Java'] .menu-title
    sleep    2
    click element    xpath://a[contains(text(),'Login')]
    press key    name:username    hello
    press key    xpath://button[@type='submit']    \\13
    sleep    2
    w
    close all browsers



*** Keywords ***
