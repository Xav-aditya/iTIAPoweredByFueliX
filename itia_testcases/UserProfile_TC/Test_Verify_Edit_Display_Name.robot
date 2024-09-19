*** Settings ***
Resource        ../../utility/itia_import.robot

Test Setup      launching_the_browser
Test Teardown       closing_the_browser

*** Test Cases ***

Test_Verify_Edit_Display_Name
    [Documentation]    This is test for verifying if user is able to successfully edit the display name in user profile section
    [Tags]     functional testcase
    Verify_Login_With_Valid_Credentials
    Click_On_User_Profile_Icon
    Edit_Display_Name_And_Validate_Success_Message
