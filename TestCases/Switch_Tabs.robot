*** Settings ***
Library    SeleniumLibrary
Resource    ../Resources/UserDefined_Keywords.robot

*** Variables ***
${URL}    https://www.thetestingworld.com/testings/
${Browser}    Firefox
*** Test Cases ***
Testcase1
    [Documentation]    This Testcase is used to test the user defined Keyword with return value
    [Tags]    Smoke
    ${Res}=    Start Browser and Maximize    ${URL}    ${Browser}
    element text should be    xpath://div[@id="tab-content1"]/p    Register now and kick start your career as a Software Testing Pro!
    capture element screenshot    xpath://div[@id="tab-content1"]/p
    input text    name:fld_username    ${Res}
    log to console    ${Res}

Testcase2
    [Tags]    Smoke    Sanity
    log    THis is testcase2



*** Keywords ***
