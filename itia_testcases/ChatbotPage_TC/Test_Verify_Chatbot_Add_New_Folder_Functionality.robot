*** Settings ***
Resource            ../../utility/itia_import.robot

Test Setup          Launching_The_Browser
Test Teardown       Closing_The_Browser



*** Test Cases ***
Verify_chatboatpage
    [Documentation]    This is Chatboat test for Creating New folder template in chatboat
    [Tags]    priority4
    Login_To_Virtual_Assistant_WebApplication
    ...    ${username}
    ...    ${domain_name}
    ...    ${password}
    ...    ${analytics&ReportPage_validation_text}
    Select_Chatboat_And_Validate_SelectedChatboatPage    Public Test Bot
    Take_Page_Screenshot    chatboatpage
    Click_On_Add_New_Folder_Plus_Icon
    Input_Foldername_In_Create_New_Folder_Textbox    ${folder_name_value}
    Click_On_Create_Button
    Validating_New_Folder_Created_Successfully    ${Expected_newfolder_success_validation_msg}
