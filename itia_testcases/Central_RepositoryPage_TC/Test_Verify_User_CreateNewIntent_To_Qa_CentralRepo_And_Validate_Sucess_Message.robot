*** Settings ***
Resource        ../../utility/itia_import.robot
Test Setup      launching_the_browser
Test Teardown       closing_the_browser

*** Test Cases ***
Verify User CreateNewIntent in Qa And Flow CentralRepo And Validate Sucess Message
    [Documentation]     Verify_User_CreateNewIntent_To_Flow/Qa_CentralRepo_And_Validate_Sucess_Message
    [Tags]          Regression Testing
    Verify_Login_With_Valid_Credentials
    Create_New_Intent_In_QA
    checking_element_displayed_status-and_click_on_Icon    ${back_button_qa}
    Delete_The_Intent_In_QA
#    Create_New_Intent_In_FLOW
