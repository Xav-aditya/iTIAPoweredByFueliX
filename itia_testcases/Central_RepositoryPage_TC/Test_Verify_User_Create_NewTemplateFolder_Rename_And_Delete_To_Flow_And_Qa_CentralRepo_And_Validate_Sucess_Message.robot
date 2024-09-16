*** Settings ***
Resource        ../../utility/itia_import.robot

Test Setup      launching_the_browser
Test Teardown       closing_the_browser

*** Test Cases ***
Verify User Create NewTemplateFolder Rename And Delete To Flow/Qa CentralRepo And Validate Sucesses Message
    [Documentation]
    [Tags]
    Verify_Login_With_Valid_Credentials
#    Create_New_Folder_In_QA
