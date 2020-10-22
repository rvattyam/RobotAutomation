*** Settings ***
Library    SeleniumLibrary
Resource    ../Resources/UserDefined_Keywords.robot
Test Setup    Start Browser and Maximize
Test Teardown    Close


*** Variables ***

*** Test Cases ***
testcase1
    Create Folder At Runtime
*** Keywords ***
