*** Settings ***
Documentation    This suite file validates valid login of the employee and admin
...    which connects to scenario SC_02 and test case TC02


Resource    ../../resource/base/CommonFunctionality.resource

Library    DataDriver    file=../../test-data/orange-hrm-data.xlsx    sheet_name=VerifyInvalidLoginData

Test Setup    Launch Browser And Navigate To Url
Test Teardown    Take Screenshot And Close Browser 

Test Template     Verify Invalid Login Template

*** Test Cases ***
Invalid Login Test ${test_name}

*** Keywords ***
Verify Invalid Login Template
    [Arguments]    ${username}    ${password}    ${expected_error}
    Input Text    name=username    ${username}
    Input Password    name=password    ${password}
    Click Element    xpath=//button[normalize-space()='Login']
    Element Text Should Be    xpath=//p[contains(normalize-space(),'Invalid')]    ${expected_error}
