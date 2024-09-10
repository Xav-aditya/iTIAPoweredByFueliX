*** Settings ***
Resource            ../../utility/itia_import.robot

Test Setup          launching_the_browser
Test Teardown       closing_the_browser


*** Test Cases ***
Verify_Login_With_Invalid_Email
    [Documentation]    This is    basic login test for virtual assistant webapp using invalid email credential
    [Tags]    login    functionaltestcase
    input_username_onloginpage    ${invalid-username}
    click_login_button_onloginpage
    validating_error_message_after_inputing_invalid_email    ${expected_username_error_validation-msg}
