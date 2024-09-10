*** Settings ***
Resource            ../../utility/itia_import.robot

Test Setup          launching_the_browser
Test Teardown       closing_the_browser


*** Test Cases ***
Verify_Forgot_Password_Link
    [Documentation]    This is Forgot_password test for virtual assistant webapp
    [Tags]    login    functionaltestcase
    input_username_onloginpage    ${username}
    click_login_button_onloginpage
    input_domain-name_onloginpage    ${domain_name}
    click_login_button_onloginpage
    click_forgot_password_link_onloginpage
    input_username_onForgotpasswordpage    ${username}
    click_submit_Button_onForgotpasswordpage
    input_domain-name_onForgotpasswordpage    ${domain_name}
    click_submit_Button_onForgotpasswordpage
    validating_Forget_domain_linkSentMessage    ${expected_forgot_password_linkSent_msg}
