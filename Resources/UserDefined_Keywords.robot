*** Settings ***
Library    SeleniumLibrary
Library    ../ExternalKeywords/UserKeywords.py
*** Variables ***
${URL}    https://www.thetestingworld.com/testings/
${Browser}    Firefox

*** Keywords ***

Start Browser and Maximize
    [Documentation]    This Keyword is defined to merge the Open Browser and Maximize Browser
    #[Arguments]    ${URL}    ${Browser}
    open browser    ${URL}    ${Browser}
    maximize browser window
    ${PageTitle}=    get title
    [Return]    ${PageTitle}

Close
    ${ttl}=    get title
    log    ${ttl}
    close all browsers

Create Folder At Runtime
    log    Creating a Folder and subFolder
    create_folder
    createSubFolder
