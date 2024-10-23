*** Settings ***
Documentation    This suite file validates valid login of the employee and admin
...    which connects to scenario SC_02 and test case TC02


Resource    ../../resource/base/CommonFunctionality.resource
Resource    ../../resource/pages/login_page.resource

Test Setup    Launch Browser And Navigate To Url
Test Teardown    Take Screenshot And Close Browser 

Test Template     Verify Invalid Login Template

*** Test Cases ***
TC1 
    John    john123    Invalid credentials
TC2
    jack    jack123    Invalid credentials  

*** Keywords ***
Verify Invalid Login Template
    [Arguments]    ${username}    ${password}    ${expected_error}
    Enter Username    ${username}
    Enter Password    ${password}
    Click Login
    Validate Invalid Login Error Message    ${expected_error}
