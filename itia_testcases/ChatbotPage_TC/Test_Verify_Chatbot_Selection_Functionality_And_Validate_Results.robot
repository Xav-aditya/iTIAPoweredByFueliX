*** Settings ***
Resource            ../../utility/itia_import.robot

Test Setup          Launching_The_Browser
Test Teardown       Closing_The_Browser


*** Test Cases ***
Verify_chatboatpage
    [Documentation]    This is Chatboat test for Validating ChatboatPage by selecting chatboat
    [Tags]    priority1
   Login_To_Virtual_Assistant_WebApplication     ${username}  ${domain_name}   ${password}  ${analytics&ReportPage_validation_text}
   Select_Chatboat_And_Validate_SelectedChatboatPage   Public Test Bot
   Take_Page_Screenshot  chatboatpage