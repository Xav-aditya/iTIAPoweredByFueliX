*** Settings ***
Resource        ../../utility/itia_import.robot

Test Setup      launching_the_browser
Test Teardown       closing_the_browser

*** Test Cases ***

Test_Verify_Disable_Allow_Notification_Tone
    [Documentation]    This is test for verifying if user is able to successfully Disable and Allow Notification Tone in user profile section
    [Tags]     functional testcase
    Verify_Login_With_Valid_Credentials
    Click_On_User_Profile_Icon
    Enable_Disable_Allow_Notification_Tone_And_Validate_Success_Message

Test_Verify_Enable_Allow_Notification_Tone
    [Documentation]    This is test for verifying if user is able to successfully Enable and Allow Notification Tone in user profile section
    [Tags]     functional testcase
    Verify_Login_With_Valid_Credentials
    Click_On_User_Profile_Icon
    Enable_Disable_Allow_Notification_Tone_And_Validate_Success_Message


