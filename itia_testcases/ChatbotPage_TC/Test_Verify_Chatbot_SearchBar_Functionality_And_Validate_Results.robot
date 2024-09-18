*** Comments ***
# Created by puchha.pavan at 16-Sep-24


*** Settings ***
Resource            ../../utility/itia_import.robot

Test Setup          Launching_The_Browser
Test Teardown       Closing_The_Browser


*** Test Cases ***
Verify Chatbot SearchBar Functionality And Validate Results
    [Documentation]    Verify_Chatbot_SearchBar_Functionality_And_Validate_Results
    [Tags]    priority2
    Verify_Login_With_Valid_Credentials
    SearchBar_Functionality_And_Validate_Results