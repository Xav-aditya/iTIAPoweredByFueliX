*** Settings ***
Resource        ../../utility/itia_import.robot

Test Setup      launching_the_browser
Test Teardown       closing_the_browser

*** Test Cases ***

Test_Verify_Last_Login_Details
    [Documentation]    This is test for verifying if user is able to successfully view last Login Logs in user profile section
    [Tags]     functional testcase
    Verify_Login_With_Valid_Credentials
    Click_On_User_Profile_Icon
    Click Element    //li[normalize-space()='Profile']
    Sleep    2 seconds
    Take_Page_Screenshot    last login details

