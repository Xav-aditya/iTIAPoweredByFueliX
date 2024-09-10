*** Settings ***
Resource            ../../utility/itia_import.robot

Test Setup          launching_the_browser
Test Teardown       closing_the_browser


*** Test Cases ***
Verify_Login_With_Invalid_Credentials_Domain
    [Documentation]    This is    basic login test for virtual assistant webapp using    invalid domain name
    [Tags]    login    functionaltestcase
    input_username_onloginpage    ${username}
    click_login_button_onloginpage
    input_domain-name_onloginpage    ${invalid_domain_name}
    click_login_button_onloginpage
    validating_error_message_after_inputing_invalid_domain_name    ${expected_domain_name_error_validation-msg}
