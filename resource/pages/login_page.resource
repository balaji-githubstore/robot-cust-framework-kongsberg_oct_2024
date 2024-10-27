*** Settings ***
Documentation    This resource handles all elements on the login page. 

Resource    ../base/CommonFunctionality.resource
Variables    pagelocators/login_page.py

*** Variables ***
${USERNAME_LOCATOR}     name=username
${PASSWORD_LOCATOR}     name=password
${LOGIN_LOCATOR}    xpath=//button[normalize-space()='Login']
${ERROR_LOCATOR}    xpath=//p[contains(normalize-space(),'Invalid')]

*** Keywords ***
Enter Username 
    [Arguments]    ${username}
    [Documentation]    Types the given text into the Username field
    ...    Examples:\n
    ...    | Enter Username | Admin |
    ...    | Enter Username | John |
    Input Text    ${username_locator}    ${username}

Enter Password
    [Arguments]    ${password}
    [Documentation]    Types the given text into the Password field
    ...    Examples:\n
    ...    | Enter Password | Admin |
    ...    | Enter Password | John |
    Input Password    ${PASSWORD_LOCATOR}    ${password}

Click Login 
    [Documentation]    Clicks on the login button
    ...    Examples:\n
    ...    | Click Login  | 
    Click Element    ${LOGIN_LOCATOR}

Validate Invalid Login Error Message
    [Arguments]     ${expected_error}
    [Documentation]    Verifies the invalid error message.
    ...    Examples:\n
    ...    | Validate Invalid Login Error Message | Invalid Username name |
    Element Text Should Be    ${ERROR_LOCATOR}    ${expected_error}