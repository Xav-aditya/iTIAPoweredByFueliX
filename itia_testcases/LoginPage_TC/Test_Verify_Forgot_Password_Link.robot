*** Settings ***
Resource            ../../utility/itia_import.robot

Test Setup          Launching_The_Browser
Test Teardown       Closing_The_Browser


*** Test Cases ***
Verify_Forgot_Password_Link
    [Documentation]    This is Forgot_password test for virtual assistant webapp
    [Tags]    login    functionaltestcase
    Input_Username_OnForgotDomainpage    ${username}
    Click_Login_Button_OnLoginpage
    Input_Domain-Name_OnLoginpage    ${domain_name}
    Click_Login_Button_OnLoginpage
    Click_Forgot_Password_Link_OnLoginpage
    Input_Username_OnForgotDomainpage    ${username}
    Click_Submit_Button_OnForgotPasswordpage
    Input_Domain-Name_OnForgotPasswordpage    ${domain_name}
    Click_Submit_Button_OnForgotPasswordpage
    Validating_Forget_Domain_LinkSentMessage    ${expected_forgot_password_linkSent_msg}
