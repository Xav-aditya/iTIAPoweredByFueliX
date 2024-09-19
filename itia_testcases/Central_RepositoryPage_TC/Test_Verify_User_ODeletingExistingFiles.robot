# Created by puchha.pavan at 18-Sep-24
*** Settings ***
Resource        ../../utility/itia_import.robot
Test Setup      Launching_The_Browser
Test Teardown   Closing_The_Browser

*** Test Cases ***
Deleteing existing files
     Verify_Login_With_Valid_Credentials
#    Click_On_Central_Repository_Icon
#    Click_On_Qa_Repository_Button
#    Deleting_Files
