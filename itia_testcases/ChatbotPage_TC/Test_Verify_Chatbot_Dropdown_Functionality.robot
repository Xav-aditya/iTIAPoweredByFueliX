*** Settings ***
Resource            ../../utility/itia_import.robot

Test Setup          Launching_The_Browser
Test Teardown       Closing_The_Browser


*** Test Cases ***
Verify_chatboatpage
    [Documentation]    This is Chatboat testcase for Selecting Repository values in CentralRepositoryDropdown
    [Tags]    priority3
    Login_To_Virtual_Assistant_WebApplication
    ...    ${username}
    ...    ${domain_name}
    ...    ${password}
    ...    ${analytics&ReportPage_validation_text}
    Select_Chatboat_And_Validate_SelectedChatboatPage    Public Test Bot
    Take_Page_Screenshot    chatboatpage
    Click_On_ChatBoat_Dropdown    Public Test Bot
    Selecting_ChatBoat_ByVisisble_Value_From_SelectChatboatDropdown    Test Bot - Vertex
    Sleep    10 Seconds
    Take_Page_Screenshot    Chatboat-selected-ddown
