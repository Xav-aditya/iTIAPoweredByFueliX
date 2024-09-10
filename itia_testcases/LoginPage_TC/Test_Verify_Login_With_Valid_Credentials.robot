# Created by puchha.pavan at 06-Sep-24
*** Settings ***
Resource        ../../utility/itia_import.robot
Test Setup      launching_the_browser
Test Teardown   closing_the_browser


*** Test Cases ***
Verify_Login_With_Valid_Credentials
    [Documentation]     Testing Login With Valid Credentials
    [Tags]              Smoke Test
    input_username_onloginpage    ${username}
    click_login_button_onloginpage
    input_domain-name_onloginpage    ${domain_name}
    click_login_button_onloginpage
    input_password_onloginpage    ${password}
    click_login_button_onloginpage