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
#    Duplicate_The_ExistingIntet_In_QA
    checking_element_displayed_status-and_click_on_Icon    ${back_button_qa}
    Delete_The_Intent_In_QA
    Sleep    2
    # Assuming Get Text fetches a string with newline-separated items
    ${list}    Get Text    ${qa_floder_list_qa}
    Log To Console    ${list}

    # Setting the string to compare against
    ${str1}    Set Variable    ${folder_name_value}
    ${str2}    Set Variable    ${update_name}
    ${rename_xpath}    Set Variable    xpath://span[contains(text(),'${str1}')]
    ${delete_xpath}    Set Variable    xpath://span[contains(text(),'${str2}')]
    ${meanu_rename_qa}    Set Variable
    ...    xpath:(//span[@title='${str1}']/following::div/div[@class='icon-ellipsis'])[1]
    ${meanu_delete_qa}    Set Variable
    ...    xpath:(//span[@title='${str2}']/following::div/div[@class='icon-ellipsis'])[1]

    # Split the list by newline since the items are newline-separated
    ${items}    Split String    ${list}    \n
    Log To Console    ${items}

# Iterate over each item in the split list
    FOR    ${item}    IN    @{items}
        Log To Console    Current Item: ${item}
        IF    "${item}" == "${str1}"
            checking_element_displayed_status-and_click_on_Icon    ${rename_xpath}
            Sleep    1
            Mouse Over    ${rename_xpath}
            Sleep    1
            Click Element    ${meanu_rename_qa}
            Sleep    1
            Mouse Over    ${menu_delete}
            Sleep    1
            checking_element_displayed_status-and_click_on_Icon    ${menu_delete}
            Sleep    1
            checking_element_displayed_status-and_click_on_Icon    ${delete_folder_qa}
#            verifying_validation_message    ${Newfolder_success_validation_msg_qa}    ${expected_delete_folder_message}
        END
    END
#    Edit_The_ExistingInten_In_FLOW