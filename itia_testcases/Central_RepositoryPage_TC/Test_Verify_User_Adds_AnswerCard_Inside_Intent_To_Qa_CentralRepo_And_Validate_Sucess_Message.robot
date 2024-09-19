# Created by puchha.pavan at 11-Sep-24
*** Settings ***
Resource        ../../utility/itia_import.robot
Test Setup      launching_the_browser
Test Teardown       closing_the_browser


*** Test Cases ***
Verify_User_Adds_AnswerCard_Inside_Intent_To_Qa_CentralRepo_And_Validate_Sucess_Message.
    [Documentation]     Verify_User_Adds_AnswerCard_Inside_Intent_To_Qa_CentralRepo_And_Validate_Sucess_Message.
    [Tags]              Regerssion Testing
    Verify_Login_With_Valid_Credentials
    AnswerCard_Inside_Intent_To_Qa
