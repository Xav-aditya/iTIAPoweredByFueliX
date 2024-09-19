*** Settings ***
Resource            ../../utility/itia_import.robot

Test Setup          Launching_The_Browser
Test Teardown       Closing_The_Browser


*** Test Cases ***
Testcase_For_Creating_Editing_And_Deleting_A_New-Intent
    [Documentation]    This is CR testcase for creating a new intent ,Editing and Deleting and validate success message
    [Tags]    functionaltestcase

    Login_To_Virtual_Assistant_WebApplication
    ...    ${username}
    ...    ${domain_name}
    ...    ${password}
    ...    ${analytics&ReportPage_validation_text}
    Navigate_To_Flow_Central_Repository_Page    ${FlowRepositoryPage_title_validation}
    Creating_New_FlowType_Folder_Template_And_Validate_SuccessMsg
    ...    ${folder_name_value}
    ...    ${Expected_newfolder_success_validation_msg}
    Creating_New_FlowType_Intent_Template_By_Adding_AnswerCards
    ...    ${input_FlowIntentTemplate_value}
    ...    ${title_name_value_flow }
    ...    ${Enter_question_value}
    ...    ${Enter_answer_value}
    Validating_Intent_Created_Successfully    ${Expected_Intent_success_validation_msg}
    Click_On_Go_Back_Button
    Editing_Intent_TemplateTitleName_And_Validate_successMessage
    ...    ${Flow_Updated_IntentTemplate_success_validation_msg}
    ...    ${Edited_IntentTemplateTitle_Value}
    Click_on_FlowExistingNode
    Editing_IntentNodeTemplateTitle_And_Question_And_Validate_successMessage
    ...    ${Flow_Updated_IntentNode_success_validation_msg}
    ...    ${Edited_IntentTemplateTitle_Value}
    ...    ${enter_Edited_question}
    Click_On_Go_Back_Button
    Deleting_IntentNodeTemplateTitle_And_Validate_successMessage    ${Flow_Deleted_IntentNode_success_validation_msg}
    Click_On_Go_Back_Button
    Deleting_IntentTemplateTitle_And_Validate_successMessage    ${Flow_Deleted_IntentTemplate_success_validation_msg}
