*** Settings ***
Resource            ../../utility/itia_import.robot

Test Setup          Launching_The_Browser
Test Teardown       Closing_The_Browser


*** Test Cases ***
Verify_Forgot_Domain_Link
    [Documentation]    This is Forgot_domain_name test for virtual assistant webapp
    [Tags]    login    functionaltestcase
    Input_Username_OnForgotDomainpage    ${username}
    Click_Login_Button_OnLoginpage
    Click_Forgot_Domain_Link_OnLoginpage
    Input_Username_OnForgotDomainpage    ${username}
    Click_Submit_Button_OnForgotDomainpage
    Validating_Forget_Domain_LinkSentMessage    ${expected_forgot_domain_linkSent_msg}
