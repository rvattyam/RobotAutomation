*** Settings ***
Library    SeleniumLibrary
Library    Collections

*** Variables ***
${Browser}  Firefox
${URL}  https://www.thetestingworld.com/testings/
*** Test Cases ***
Robot First Testcase
    [Tags]    Regression
    Open Browser    ${URL}    ${Browser}
    maximize browser window

    Input Text    name:fld_username    justteja
    Input Text    xpath://input[@name='fld_email']    testing@123.com
    select from list by value    name:sex    2
    select from list by index    name:sex    1
    select from list by label    name:sex    Female
    select radio button    add_type    office
    select checkbox    terms
    click link    xpath://a[contains(text(),'Read Detail')]
    switch window
    click link    xpath://a[contains(text(),'X')]
    switch window
    select from list by label    name:sex    Male


*** Keywords ***
