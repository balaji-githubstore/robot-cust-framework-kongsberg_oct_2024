
*** Settings ***
Documentation    This suite file validates valid login of the employee and admin
...    which connects to scenario SC_02 and test case TC02


Resource    ../../resource/base/CommonFunctionality.resource

Test Setup    Launch Browser And Navigate To Url
Test Teardown    Take Screenshot And Close Browser 

*** Test Cases ***
Verify Add Valid Employee
    Input Text    name=username    Admin
    Input Password    name=password    admin123
    Click Element    xpath=//button[normalize-space()='Login']
    Click Element    xpath=//span[normalize-space()='PIM']
    Click Element    xpath=//a[normalize-space()='Add Employee']
    Input Text    name=firstName    john
    Input Text    name=middleName    w
    Input Text    name=lastName    wick
    Choose File    xpath=//input[@type='file']    ${EXECDIR}${/}test-data${/}images${/}profile.png
    Click Element    xpath=//button[normalize-space()='Save']
    # Element Text Should Be    xpath=//div[@class='orangehrm-edit-employee-name']    john wick
    Element Text Should Be    xpath=//h6[contains(normalize-space(),'john')]    john wick
    Element Attribute Value Should Be    name=firstName    value    john



*** Comments ***
1. Navigate to the url
2. Enter Admin username
3. Enter password
4. Click Login
5. Mouse over on PIM
6. Click on Add Employee
7. Enter firstname
8. Enter middlename
9. Enter lastname
Upload image 
10. Click on save
11. validate the name added to the system
