*** Settings ***
Resource            ../../utility/itia_import.robot

Test Setup          launching_the_browser
Test Teardown       closing_the_browser


*** Test Cases ***
Verify_Forgot_Domain_Link
    [Documentation]    This is Forgot_domain_name test for virtual assistant webapp
    [Tags]    login    functionaltestcase
    input_username_onloginpage    ${username}
    click_login_button_onloginpage
    click_forgot_domain_link_onloginpage
    input_username_onForgotdomainpage    ${username}
    click_submit_button_onForgotdomainpage
    validating_forget_domain_linkSentMessage    ${expected_forgot_domain_linkSent_msg}
