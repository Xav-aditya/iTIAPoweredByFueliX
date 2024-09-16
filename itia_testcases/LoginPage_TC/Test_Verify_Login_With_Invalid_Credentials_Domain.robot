*** Settings ***
Resource            ../../utility/itia_import.robot

Test Setup          Launching_The_Browser
Test Teardown       Closing_The_Browser


*** Test Cases ***
Verify_Login_With_Invalid_Credentials_Domain
    [Documentation]    This is    basic login test for virtual assistant webapp using    invalid domain name
    [Tags]    login    functionaltestcase
    Input_Username_OnLoginpage        ${username}
    Click_Login_Button_OnLoginpage
    Input_Domain-Name_OnLoginpage      ${invalid_domain_name}
    Click_Login_Button_OnLoginpage
    Validating_Error_Message_After_Inputing_Invalid_Domain_Name    ${expected_domain_name_error_validation-msg}
