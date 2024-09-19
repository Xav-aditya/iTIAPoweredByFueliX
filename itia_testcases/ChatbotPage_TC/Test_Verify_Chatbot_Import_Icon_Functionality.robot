# Created by puchha.pavan at 17-Sep-24
*** Settings ***
Resource        ../../utility/itia_import.robot
Test Setup      Launching_The_Browser
Test Teardown   Closing_The_Browser

*** Test Cases ***
Verify Chatbot Import Icon Functionality
    [Documentation]     Verify_Chatbot_Import_Icon_Functionality
    [Tags]      priority5

    Verify_Login_With_Valid_Credentials
    Chatbot_CR_Create_New_Intent
    Creating_New_Folder_ChatBot
    Import_Intent_ChatBot
    
   
   
   