*** Settings ***
Documentation    This resource contains library, browser and report configuration details.

Library    SeleniumLibrary        


*** Variables ***
${BROWSER}    chrome
${URL}    https://opensource-demo.orangehrmlive.com/

*** Keywords ***
Launch Browser And Navigate To Url 
    Open Browser    browser=${BROWSER}
    Maximize Browser Window
    Set Selenium Implicit Wait    30s
    Go To    url=${URL}
    Set Screenshot Directory    path=${EXECDIR}${/}logs

Take Screenshot And Close Browser
    Run Keyword And Ignore Error    Capture Page Screenshot
    Close All Browsers
