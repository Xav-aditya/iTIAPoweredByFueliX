*** Comments ***
# Created by puchha.pavan at 09-Sep-24


*** Settings ***
Resource            ../../utility/itia_import.robot

Test Setup          launching_the_browser
Test Teardown       closing_the_browser


*** Test Cases ***
Verify User Edit Existing Intent UnderActions for Flow And Qa CentralRepo And Validate Sucess Message
    [Documentation]    Verify_User_Edit_the_ExistingIntent_UnderActions_for_Flow/Qa_CentralRepo_And_Validate_Sucess_Message
    [Tags]    Regression Testing
    Verify_Login_With_Valid_Credentials
    Edit_the_ExistingInten_In_QA
