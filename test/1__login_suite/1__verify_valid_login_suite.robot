*** Settings ***
Documentation    This suite file validates valid login of the employee and admin
...    which connects to scenario SC_02 and test case TC02


Resource    ../../resource/base/CommonFunctionality.resource
Resource    ../../resource/pages/login_page.resource

Test Setup    Launch Browser And Navigate To Url
Test Teardown    Take Screenshot And Close Browser 

*** Test Cases ***
Verify Valid Login Test
    [Documentation]    Verify valid admin login 
    [Tags]    smoke    login
    Enter Username    Admin
    Enter Password    admin123
    Click Login
    Element Text Should Be    xpath=//p[contains(normalize-space(),'Quick')]    Quick Launch

