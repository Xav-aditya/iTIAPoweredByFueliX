*** Settings ***
Resource            ../../utility/itia_import.robot

Test Setup          Launching_The_Browser
Test Teardown       Closing_The_Browser


*** Test Cases ***
Verify_Login_With_Valid_Credentials
    [Documentation]    This is login testcase with valid credentials
    Login_To_Virtual_Assistant_WebApplication
    ...    ${username}
    ...    ${domain_name}
    ...    ${password}
    ...    ${analytics&ReportPage_validation_text}
