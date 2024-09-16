*** Settings ***
Resource            ../../utility/itia_import.robot

Test Setup          Launching_The_Browser
Test Teardown       Closing_The_Browser


*** Test Cases ***
Verify_Login_With_Invalid_Email
    [Documentation]    This is    basic login test for virtual assistant webapp using invalid email credential
    [Tags]    login    functionaltestcase
    Input_Username_OnLoginpage      ${invalid-username}
    Click_Login_Button_OnLoginpage
    Validating_Error_Message_After_Inputing_Invalid_Email   ${expected_username_error_validation-msg}
