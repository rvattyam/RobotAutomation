*** Settings ***
Library    SeleniumLibrary
Resource    ../Resources/UserDefined_Keywords.robot
Test Setup    Start Browser and Maximize
Test Teardown    Close
*** Variables ***

*** Test Cases ***
Testcase1
    [Tags]    Regression
    [Documentation]    This Testcase is used to test the user defined Keyword with return value
    element text should be    xpath://div[@id="tab-content1"]/p    Register now and kick start your career as a Software Testing Pro!
    capture element screenshot    xpath://div[@id="tab-content1"]/p
    input text    name:fld_username    Success


Testcase2
    [Tags]    Sanity
    [Documentation]    This is Second testcase
    select radio button    add_type    home
    select radio button    add_type    office

    select from list by value    country    12
    sleep    8
    capture page screenshot

*** Keywords ***
