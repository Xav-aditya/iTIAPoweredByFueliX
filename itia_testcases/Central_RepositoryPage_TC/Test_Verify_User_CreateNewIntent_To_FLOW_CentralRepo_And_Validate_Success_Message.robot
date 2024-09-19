*** Settings ***
Resource            ../../utility/itia_import.robot

Test Setup          Launching_The_Browser
Test Teardown       Closing_The_Browser


*** Test Cases ***
Testcase_For_Creating_A_New-Intent
    [Documentation]    This is CR testcase for creating a new intent and validate success message
    [Tags]    functionaltestcase

    Login_To_Virtual_Assistant_WebApplication
    ...    ${username}
    ...    ${domain_name}
    ...    ${password}
    ...    ${analytics&ReportPage_validation_text}
    Navigate_To_Flow_Central_Repository_Page    ${FlowRepositoryPage_title_validation}
    Click_On_Add_New_Folder_Plus_Icon
    Input_Foldername_In_Create_New_Folder_Textbox    ${folder_name_value_flow}
    Click_On_Create_Button
    Validating_New_Folder_Created_Successfully    ${Expected_newfolder_success_validation_msg}
    Click_On_Add_Intent
    Click_On_New_Intent_Inside_Add_Intentlist
    Input_New_Intent_TemplateName    ${input_FlowIntentTemplate_value}
    Click_On_Plus_Icon_In_New_Intent_Template
    Input_Title_Name_In_New_Intent    ${title_name_value_flow }
    Adding_Question_Inside_The_New_Intent    ${Enter_question_value}
    Click_AutoSuggestion_Checkbox
    Click_On_Add_Cards
    Click_On_Text_Cards_Inside_Add_Answer_Cards
    Input_Answer_Value_Inside_Text_Answer_Card    ${Enter_answer_value}
    Scroll_DownTo_Feedback_Section_In_Intentpage
    Click_On_Feedback_Toggle_In_Intentpage
    Click_On_Feedback_Note_Toggle_In_Intentpage
    Click_On_Save_Button_To_Save_The_Intent
    Validating_Intent_Created_Successfully    ${Expected_Intent_success_validation_msg}
