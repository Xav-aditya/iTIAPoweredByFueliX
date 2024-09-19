*** Settings ***
Resource        ../../utility/itia_import.robot

Test Setup      launching_the_browser
Test Teardown       closing_the_browser

*** Test Cases ***

Test_Verify_Edit_Preferred_Bot
    [Documentation]    This is test for verifying if user is able to successfully edit the preferred bot in user profile section
    [Tags]     functional testcase
    Verify_Login_With_Valid_Credentials
    Click_On_User_Profile_Icon
    Edit_Preferred_Bot_And_Validate_Success_Message
#    Click Element    //li[normalize-space()='Profile']
#    Click Element    //button[normalize-space()='Edit Profile']
#    Click Element    //input[@placeholder='Preferred Bot']
#    Input Text    //input[@placeholder='Preferred Bot']    Transaction Bot MQA
#    Click Element    //button[normalize-space()='Save']
