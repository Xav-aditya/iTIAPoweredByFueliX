*** Settings ***
Resource            ../../utility/itia_import.robot

Test Setup          launching_the_browser
Test Teardown       closing_the_browser


*** Test Cases ***
Verify_Login_With_Invalid_Credentials_Password
    [Documentation]    This is    basic login test for virtual assistant webapp using    invalid password
    [Tags]    login    functionaltestcase
    input_username_onloginpage    ${username}
    click_login_button_onloginpage
    input_domain-name_onloginpage    ${domain_name}
    click_login_button_onloginpage
    input_password_onloginpage    ${invalid_password}
    click_login_button_onloginpage
    validating_error_message_after_inputing_invalid_password    ${expected_password_error_validation-msg}
