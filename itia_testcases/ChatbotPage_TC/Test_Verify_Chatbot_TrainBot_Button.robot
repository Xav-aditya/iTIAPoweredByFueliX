# Created by puchha.pavan at 17-Sep-24
*** Settings ***
Resource    ../../utility/itia_import.robot
Test Setup      Launching_The_Browser
Test Teardown       Closing_The_Browser

*** Test Cases ***
Verify Chatbot TrainBot Button
#before run this TC Run Priority5
    [Documentation]     Verify_Chatbot_TrainBot_Button
    [Tags]      priority6
    Depends On Test    Verify Chatbot Import Icon Functionality
    Verify_Login_With_Valid_Credentials
    Chatbot_TrainBot_Button
