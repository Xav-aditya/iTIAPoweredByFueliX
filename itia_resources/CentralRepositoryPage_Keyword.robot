*** Settings ***
Resource    ../utility/itia_import.robot
Library     XML
Library     Collections
Library     ../itia_libraries/CustomLibrary.py
Library     String


*** Keywords ***
Create_New_Folder_In_QA
    Wait Until Element Is Visible    ${Central_Repository}
    checking_element_displayed_status-and_click_on_Icon    ${Central_Repository}
    Verify_title_validation
    checking_element_displayed_status-and_click_on_Icon    ${QA_Repostory_button}
    checking_element_displayed_status-and_click_on_Icon    ${add_new_folder}
    checking_textBox_displayed_status-and_input_value_in _textbox    ${enter_folder_name }    ${folder_name_value}
    checking_element_displayed_status-and_click_on_Icon    ${button_create}
    verifying_validation_message    ${Newfolder_success_validation_msg}    ${expected_newfolder_success_validation_msg}
#     Assuming Get Text fetches a string with newline-separated items

Rename_Folder_QA
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

    # Rename Folder
    # Iterate over each item in the split list
    FOR    ${item}    IN    @{items}
        Log To Console    Current Item: ${item}
        IF    "${item}" == "${str1}"
            checking_element_displayed_status-and_click_on_Icon    ${rename_xpath}
            Sleep    2
            Mouse Over    ${rename_xpath}
            Sleep    1
            Click Element    ${meanu_rename_qa}
            Sleep    2
            Mouse Over    ${menu_rename}
            Sleep    2
            checking_element_displayed_status-and_click_on_Icon    ${menu_rename}
            Sleep    2
            checking_textBox_displayed_status-and_input_value_in _textbox    ${rename_text_foler_qa}    ${update_name}
            checking_element_displayed_status-and_click_on_Icon    ${update_folder_name_qa}
            verifying_validation_message    ${Newfolder_success_validation_msg_qa}    ${expected_rename_folder_message}
        END
    END
    Sleep    3

Delete_Folder_QA
    # Delete folder
    Sleep    2
    # Assuming Get Text fetches a string with newline-separated items
    ${list}    Get Text    xpath://div[@data-testid='virtuoso-item-list']
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
        IF    "${item}" == "${str2}"
            checking_element_displayed_status-and_click_on_Icon    ${delete_xpath}
            Sleep    2
            Mouse Over    ${delete_xpath}
            Sleep    1
            Click Element    ${meanu_delete_qa}
            Sleep    2
            Mouse Over    ${menu_delete}
            Sleep    2
            checking_element_displayed_status-and_click_on_Icon    ${menu_delete}
            Sleep    2
            checking_element_displayed_status-and_click_on_Icon    ${delete_folder_qa}
            verifying_validation_message    ${Newfolder_success_validation_msg_qa}    ${expected_delete_folder_message}
        END
    END

Create_New_Intent_In_QA
    Wait Until Element Is Visible    ${Central_Repository}
    checking_element_displayed_status-and_click_on_Icon    ${Central_Repository}
    Verify_title_validation
    checking_element_displayed_status-and_click_on_Icon    ${QA_Repostory_button}
    checking_element_displayed_status-and_click_on_Icon    ${add_new_folder_qa}
    checking_textBox_displayed_status-and_input_value_in _textbox    ${enter_folder_name_qa }    ${folder_name_value}
    checking_element_displayed_status-and_click_on_Icon    ${button_create_qa}
    verifying_validation_message
    ...    ${Newfolder_success_validation_msg_qa}
    ...    ${expected_newfolder_success_validation_msg}
    checking_element_displayed_status-and_click_on_Icon    ${add_intent_qa}
    checking_element_displayed_status-and_click_on_Icon    ${new_intent_qa}
    checking_textBox_displayed_status-and_input_value_in _textbox    ${title_name_qa}    ${qa_title_name_value }
    checking_textBox_displayed_status-and_input_value_in _textbox    ${enter_question_qa}    ${enter_question_value1}
    checking_textBox_displayed_status-and_input_value_in _textbox    ${enter_question_qa}    ${enter_question_value2}
    Wait Until Element Is Visible    ${enable_checkbox_qa}
    Mouse Over    ${enable_checkbox_qa}
    checking_element_displayed_status-and_click_on_Icon    ${enable_checkbox_qa}
    checking_element_displayed_status-and_click_on_Icon    ${add_cards_qa}
    checking_element_displayed_status-and_click_on_Icon    ${answer_card_qa}
    checking_textBox_displayed_status-and_input_value_in _textbox    ${enter_answer_qa}    ${enter_answer_value}
    Mouse Over    ${goto_feedback_qa}
    checking_element_displayed_status-and_click_on_Icon    ${goto_feedback_qa}
    checking_element_displayed_status-and_click_on_Icon    ${feedback_toggle_qa}
    checking_element_displayed_status-and_click_on_Icon    ${button_save_qa}
    verifying_validation_message    ${success_intent_msg_qa}    ${expected_Intent_success_validation_msg}

# Create_New_Intent_In_FLOW
#    Wait Until Element Is Visible    ${Central_Repository}
#    checking_element_displayed_status-and_click_on_Icon    ${Central_Repository}
#    Verify_title_validation
#    checking_element_displayed_status-and_click_on_Icon    ${FLOW_Respository_button}
#    checking_element_displayed_status-and_click_on_Icon    ${add_new_folder}
#    checking_textBox_displayed_status-and_input_value_in _textbox    ${enter_folder_name }    ${folder_name_value}
#    checking_element_displayed_status-and_click_on_Icon    ${button_create}
#    verifying_validation_message
#    ...    ${Newfolder_success_validation_msg}
#    ...    ${expected_newfolder_success_validation_msg1}
#    checking_element_displayed_status-and_click_on_Icon    ${add_intent}
#    checking_element_displayed_status-and_click_on_Icon    ${new_intent}
#    checking_textBox_displayed_status-and_input_value_in _textbox    ${template_name}    ${flow_title_name_value }
#    checking_element_displayed_status-and_click_on_Icon    ${button_ok}
#    checking_element_displayed_status-and_click_on_Icon    ${add_newNode}
#    checking_textBox_displayed_status-and_input_value_in _textbox    ${title_name}    ${flow_title_name_value }
#    checking_textBox_displayed_status-and_input_value_in _textbox    ${enter_question}    ${enter_question_value1}
#    Wait Until Element Is Visible    ${enable_checkbox}
#    Mouse Over    ${enable_checkbox}
#    checking_element_displayed_status-and_click_on_Icon    ${enable_checkbox}
#    checking_element_displayed_status-and_click_on_Icon    ${add_cards}
#    checking_element_displayed_status-and_click_on_Icon    ${answer_card}
#    checking_textBox_displayed_status-and_input_value_in _textbox    ${enter_answer}    ${enter_answer_value}
#    Mouse Over    ${goto_feedback}
#    checking_element_displayed_status-and_click_on_Icon    ${goto_feedback}
#    checking_element_displayed_status-and_click_on_Icon    ${feedback_toggle}
#    checking_element_displayed_status-and_click_on_Icon    ${button_save}
#    verifying_validation_message    ${success_intent_msg}    ${expected_Intent_success_validation_msg}

Edit_The_ExistingInten_In_QA
    Create_New_Intent_In_QA
    checking_element_displayed_status-and_click_on_Icon    ${back_button_qa}
    checking_element_displayed_status-and_click_on_Icon    ${edit_action_qa}
    Clear Element Text    ${title_name_qa}
    checking_textBox_displayed_status-and_input_value_in _textbox    ${title_name_qa}    ${edit_title_name_qa}
    checking_element_displayed_status-and_click_on_Icon    ${add_question_icon_qa}
    checking_textBox_displayed_status-and_input_value_in _textbox
    ...    ${enter_secound_question_qa}
    ...    ${edit_question_qa}
    checking_element_displayed_status-and_click_on_Icon    ${button_save_qa}
    verifying_validation_message    ${success_intent_msg_qa}    ${expected_edit_qa_intent_message}

Duplicate_The_ExistingIntet_In_QA
    checking_element_displayed_status-and_click_on_Icon    ${back_button_qa}
    checking_element_displayed_status-and_click_on_Icon    ${duplicate_action_qa}
    checking_element_displayed_status-and_click_on_Icon    ${select_folder_popUp_qa}
    checking_element_displayed_status-and_click_on_Icon    ${button_done_popUp_qa}
    verifying_validation_message
    ...    ${duplicate_intent_success_validation_msg_qa}
    ...    ${expected_duplicate_sccess_message}

Delete_The_Intent_In_QA
#    checking_element_displayed_status-and_click_on_Icon    ${back_button}
    checking_element_displayed_status-and_click_on_Icon    ${delete_action_qa}
    checking_element_displayed_status-and_click_on_Icon    ${confirm_delete_button_qa}
    Wait Until Element Is Visible    ${delete_intent_success_validation_msg_qa}
    verifying_validation_message
    ...    ${delete_intent_success_validation_msg_qa}
    ...    ${expected_delete_intent_success_message}

# Edit_The_ExistingInten_In_FLOW
#    Create_New_Intent_In_FLOW
#    checking_element_displayed_status-and_click_on_Icon    ${back_button_qa}
#    checking_element_displayed_status-and_click_on_Icon    ${select_node}
#    checking_element_displayed_status-and_click_on_Icon    ${edit_action_flow}
#    Clear Element Text    ${title_name}
#    checking_textBox_displayed_status-and_input_value_in _textbox    ${title_name}    ${edit_title_name_qa}
#    checking_element_displayed_status-and_click_on_Icon    ${add_question_icon}
#    checking_textBox_displayed_status-and_input_value_in _textbox    ${enter_secound_question}    ${edit_question_qa}
#    checking_element_displayed_status-and_click_on_Icon    ${ml_dropdown}
#    checking_element_displayed_status-and_click_on_Icon    ${select_keyword}
#    checking_element_displayed_status-and_click_on_Icon    ${button_save}
#    verifying_validation_message    ${success_intent_msg}    ${expected_edit_qa_intent_message}

AnswerCard_Inside_Intent_To_Qa
    Wait Until Element Is Visible    ${Central_Repository}
    checking_element_displayed_status-and_click_on_Icon    ${Central_Repository}
    Verify_title_validation
    checking_element_displayed_status-and_click_on_Icon    ${QA_Repostory_button}
    checking_element_displayed_status-and_click_on_Icon    ${add_new_folder_qa}
    checking_textBox_displayed_status-and_input_value_in _textbox    ${enter_folder_name_qa}    ${folder_name_value}
    checking_element_displayed_status-and_click_on_Icon    ${button_create_qa}
    verifying_validation_message
    ...    ${Newfolder_success_validation_msg_qa}
    ...    ${expected_newfolder_success_validation_msg}
    checking_element_displayed_status-and_click_on_Icon    ${add_intent_qa}
    checking_element_displayed_status-and_click_on_Icon    ${new_intent_qa}
    checking_textBox_displayed_status-and_input_value_in _textbox    ${title_name_qa}    ${qa_title_name_value }
    checking_textBox_displayed_status-and_input_value_in _textbox    ${enter_question_qa}    ${enter_question_value1}
    Wait Until Element Is Visible    ${enable_checkbox_qa}
    Mouse Over    ${enable_checkbox_qa}
    checking_element_displayed_status-and_click_on_Icon    ${enable_checkbox_qa}
    checking_element_displayed_status-and_click_on_Icon    ${add_cards_qa}

# Text Card
    checking_element_displayed_status-and_click_on_Icon    ${answer_card_qa}
    checking_textBox_displayed_status-and_input_value_in _textbox    ${enter_answer_qa}    ${enter_answer_value}

# URL Card
    checking_element_displayed_status-and_click_on_Icon    ${url_card_qa}
    checking_textBox_displayed_status-and_input_value_in _textbox    ${enter_url_qa}    ${vaild_url}

# Shuffle Card
    checking_element_displayed_status-and_click_on_Icon    ${shuffle_card_qa}
    checking_element_displayed_status-and_click_on_Icon    ${add_shuffle_card_qa}
    checking_textBox_displayed_status-and_input_value_in _textbox    ${shuffle_text1_qa}    ${shuffle_text1}
    checking_element_displayed_status-and_click_on_Icon    ${add_shuffle_card_qa}
    checking_textBox_displayed_status-and_input_value_in _textbox    ${shuffle_text2_qa}    ${shuffle_text2}

# Video Card
    checking_element_displayed_status-and_click_on_Icon    ${video_card_qa}
    checking_textBox_displayed_status-and_input_value_in _textbox    ${enter_video_url_qa}    ${video_card_url}
    checking_element_displayed_status-and_click_on_Icon    ${video_done_button_qa}

# Image Card
    checking_element_displayed_status-and_click_on_Icon    ${image_card_qa1}
    Choose File    ${add_image_in_imagecard_qa}    ${image_file3}
    Sleep    5

# Carousel Card with query
    checking_element_displayed_status-and_click_on_Icon    ${carousel_card_qa}
    Choose File    ${upload_image_carousalcard_qa1}    ${image_file1}
    Sleep    2
    Mouse Over    ${carouselcard_title1_qa}
    checking_element_displayed_status-and_click_on_Icon    ${carouselcard_title1_qa}
    checking_textBox_displayed_status-and_input_value_in _textbox    ${button_title_popup1_qa}    ${button_title1}
    checking_textBox_displayed_status-and_input_value_in _textbox    ${query_popup1_qa}    ${query1}
    Wait Until Element Is Enabled    ${done_popup1_qa}
    checking_element_displayed_status-and_click_on_Icon    ${done_popup1_qa}
    Mouse Over    ${carousel_card_text1_qa}
    Wait Until Element Is Visible    ${carousel_card_text1_qa}
    checking_textBox_displayed_status-and_input_value_in _textbox
    ...    ${carousel_card_text1_qa}
    ...    ${carouselcard_text_value1}

# Adding Second carousel card
    checking_element_displayed_status-and_click_on_Icon    ${carousel_card_add_image2_qa}
    Choose File    ${upload_image_carousalcard_qa2}    ${image_file2}
    Sleep    2
    Mouse Over    ${carouselcard_title2_qa}
    checking_element_displayed_status-and_click_on_Icon    ${carouselcard_title2_qa}
    checking_textBox_displayed_status-and_input_value_in _textbox    ${button_title_popup2_qa}    ${button_title2}
    checking_element_displayed_status-and_click_on_Icon    ${url_popup_qa}
    checking_textBox_displayed_status-and_input_value_in _textbox    ${enter_url_popup_qa}    ${url_popup}
    Sleep    2
    Wait Until Element Is Enabled    ${done_popup2_qa}
    checking_element_displayed_status-and_click_on_Icon    ${done_popup2_qa}
    Mouse Over    ${carousel_card_text2_qa}
    Wait Until Element Is Visible    ${carousel_card_text2_qa}
    checking_textBox_displayed_status-and_input_value_in _textbox
    ...    ${carousel_card_text2_qa}
    ...    ${carouselcard_text_value2}

    Wait Until Element Is Enabled    ${button_save}
    checking_element_displayed_status-and_click_on_Icon    ${button_save}
    verifying_validation_message    ${success_intent_msg}    ${expected_Intent_success_validation_msg}

# Pulkit code TC_01, TC_02, TC_05, TC_07

Click_On_Central_Repository_Icon
    Wait Until Page Contains Element    ${Central_Repository}
    checking_element_displayed_status-and_click_on_Icon    ${Central_Repository}
#    checking_link_displayed_status-and_click_on_Link    ${Central_Repository}

Click_On_Flow_Repository_Button
    Wait Until Page Contains Element    ${Flow_Repostory_button}
    checking_link_displayed_status-and_click_on_Link    ${Flow_Repostory_button}

Click_On_Qa_Repository_Button
    Wait Until Page Contains Element    ${Qa_Repostory_button}
    checking_link_displayed_status-and_click_on_Link    ${Qa_Repostory_button}

Validate_Central_Repository_Page
    [Arguments]    ${CentralRepositoryPage_title_validation}
    # wait till user lands on Cr page then validate
    set selenium timeout    3seconds
    Wait Until Page Contains Element    ${Central_Repository_page_title}
    Page Should Contain    ${CentralRepositoryPage_title_validation}

Validate_Qa/Flow_Central_Repository_Page
    [Arguments]    ${Page_title_validation}
    # wait till user lands on Cr page then validate
    set selenium timeout    3seconds
    Wait Until Page Contains Element    ${Central_Repository_page_title}
    ${page_title}    Get Element Attribute
    ...    xpath://*[@data-testid="inputBoxDiv-ellipsis"]//*[@title="${Page_title_validation}"]
    ...    title
    Should Be Equal    ${page_title}    ${Page_title_validation}

Navigate_To_Flow_Central_Repository_Page
    [Documentation]    This keyword is for navigating to FlowcentralRepository page
    [Arguments]    ${Page_title_validation}
    Click_On_Central_Repository_Icon
    Click_On_Flow_Repository_Button
    Validate_Qa/Flow_Central_Repository_Page    ${Page_title_validation}

Click_On_Add_New_Folder_Plus_Icon
    set selenium timeout    3seconds
    Wait Until Page Contains Element    ${add_new_folder}
    checking_icon_displayed_status-and_click_on_Icon    ${add_new_folder}

Input_Foldername_In_Create_New_Folder_Textbox
    [Arguments]    ${folder_name_value_flow}
    Set Selenium Timeout    10 seconds
    Wait Until Page Contains Element    ${enter_folder_name }
    Checking_textBox_displayed_status-and_input_value_in _textbox    ${enter_folder_name }    ${folder_name_value_flow}

Click_On_Create_Button
    Wait Until Page Contains Element    ${button_create}
    Checking_button_displayed_status-and_click_on_button    ${button_create}

Validating_New_Folder_Created_Successfully
    [Arguments]    ${Expected_newfolder_success_validation_msg}
    Set Selenium Timeout    10 seconds
    Capture Element Screenshot    ${Newfolder_success_validation_msg}    newfoldersucesscreenshot.png
    Capture Page Screenshot    newfoldersucesscreenshotFullpage.png
    Verifying_validation_message    ${Newfolder_success_validation_msg}    ${Expected_newfolder_success_validation_msg}

Creating_New_FlowType_Folder_Template_And_Validate_SuccessMsg
    [Documentation]    This key is used to create a newflowtype folderTemplate in flow centralrepository
    # Click_On_Add_New_Folder_Plus_Icon
    [Arguments]    ${folder_name_value }    ${Expected_newfolder_success_validation_msg}

    set selenium timeout    3seconds
    Wait Until Page Contains Element    ${add_new_folder}
    checking_icon_displayed_status-and_click_on_Icon    ${add_new_folder}
    # Input_Foldername_In_Create_New_Folder_Textbox
    Set Selenium Timeout    10 seconds
    Wait Until Page Contains Element    ${enter_folder_name }
    Checking_textBox_displayed_status-and_input_value_in _textbox    ${enter_folder_name }    ${folder_name_value }
    # Click_On_Create_Button
    Wait Until Page Contains Element    ${button_create}
    Checking_button_displayed_status-and_click_on_button    ${button_create}
    # Validating_New_Folder_Created_Successfull
    Set Selenium Timeout    10 seconds
    Capture Element Screenshot    ${Newfolder_success_validation_msg}    newfoldersucesscreenshot.png
    Capture Page Screenshot    newfoldersucesscreenshotFullpage.png
    Verifying_validation_message    ${Newfolder_success_validation_msg}    ${Expected_newfolder_success_validation_msg}

Click_On_Repository_Dropdown
    Wait Until Page Contains Element    ${Click_on_repository_CRdropdown}
    Click Element    ${Click_on_repository_CRdropdown}

Selecting_Repository_ByVisisble_Value_From_RepositoryDropdown
    [Arguments]    ${Repository_name}
    Set Selenium Timeout    3 seconds
    ${element count}    Get Element Count    ${Selecting_repository_Webelement_CRdropdown}
    FOR    ${index}    IN RANGE    1    ${element count}
        ${element}    Get Webelement    //*[@data-testid="inputBoxDiv-ellipsis"]//following::a[${index}]
        ${text}    Get Element Attribute    ${element}    title
        Log To Console    ${text}
        IF    '${text}' == '${Repository_name}'
            Click Element    ${element}
            BREAK
        END
    END

Click_On_Add_Intent
    Wait Until Page Contains Element    ${add_intent}
    Checking_Icon_displayed_status-and_click_on_Icon    ${add_intent}

Click_On_New_Intent_Inside_Add_Intentlist
    Wait Until Page Contains Element    ${new_intent}
    Checking_Icon_displayed_status-and_click_on_Icon    ${new_intent}

Input_New_Intent_TemplateName
    [Arguments]    ${input_FlowIntentTemplate_value}
    Wait Until Page Contains Element    ${Enter_FlowIntentTitle}
    checking_textBox_displayed_status-and_input_value_in _textbox
    ...    ${Enter_FlowIntentTitle}
    ...    ${input_FlowIntentTemplate_value}
    checking_button_displayed_status-and_click_on_button    ${Enter_FlowIntentTitle_OkButton}

Click_On_Plus_Icon_In_New_Intent_Template
    Wait Until Page Contains Element    ${Plusicon_FlowIntentTemplate}
    Checking_Icon_displayed_status-and_click_on_Icon    ${Plusicon_FlowIntentTemplate}

Input_Title_Name_In_New_Intent
    [Arguments]    ${title_name_value_flow }
    Wait Until Element Is Visible    ${title_name}
    Checking_textBox_displayed_status-and_input_value_in _textbox    ${title_name}    ${title_name_value_flow }

Adding_Question_Inside_The_New_Intent
    [Arguments]    ${Enter_question_value}
    Wait Until Page Contains Element    ${enter_question}
    Checking_textBox_displayed_status-and_input_value_in _textbox    ${enter_question}    ${Enter_question_value}

Click_AutoSuggestion_Checkbox
    Wait Until Page Contains Element    ${enable_checkbox}
    Checking_Icon_displayed_status-and_click_on_Icon    ${enable_checkbox}

Click_On_Add_Cards
    Wait Until Page Contains Element    ${add_cards}
    Checking_Icon_displayed_status-and_click_on_Icon    ${add_cards}

Click_On_Text_Cards_Inside_Add_Answer_Cards
    Wait Until Page Contains Element    ${answer_card}
    Checking_Icon_displayed_status-and_click_on_Icon    ${answer_card}

Input_Answer_Value_Inside_Text_Answer_Card
    [Arguments]    ${Enter_answer_value}
    Wait Until Page Contains Element    ${enter_answer}
    Checking_textBox_displayed_status-and_input_value_in _textbox    ${enter_answer}    ${Enter_answer_value}

Scroll_DownTo_Feedback_Section_In_Intentpage
    Scroll Element Into View    ${goto_feedback}

Click_On_Feedback_Toggle_In_Intentpage
    Wait Until Page Contains Element    ${feedback_toggle}
    Checking_Icon_displayed_status-and_click_on_Icon    ${feedback_toggle}

Click_On_Feedback_Note_Toggle_In_Intentpage
    Wait Until Page Contains Element    ${feedback_noteToggle}
    Checking_Icon_displayed_status-and_click_on_Icon    ${feedback_noteToggle}

Input_Url_value_Inside_One_Source_Textbox
    [Arguments]    ${Enter_url_value_inSource}
    Wait Until Page Contains Element    ${one_source}
    Checking_textBox_displayed_status-and_input_value_in _textbox    ${one_source}    ${Enter_url_value_inSource}

Creating_New_FlowType_Intent_Template_By_Adding_AnswerCards
    [Documentation]    This keyword is used to create a newflowtype IntentTemplate inside flow central Repository
    [Arguments]
    ...    ${input_FlowIntentTemplate_value}
    ...    ${title_name_value_flow }
    ...    ${Enter_question_value}
    ...    ${Enter_answer_value}
    # Click_On_Add_Intent
    Wait Until Page Contains Element    ${add_intent}
    Checking_Icon_displayed_status-and_click_on_Icon    ${add_intent}
    # Click_On_New_Intent_Inside_Add_Intentlist
    Wait Until Page Contains Element    ${new_intent}
    Checking_Icon_displayed_status-and_click_on_Icon    ${new_intent}
    # Input_New_Intent_TemplateName
    Wait Until Page Contains Element    ${Enter_FlowIntentTitle}
    checking_textBox_displayed_status-and_input_value_in _textbox
    ...    ${Enter_FlowIntentTitle}
    ...    ${input_FlowIntentTemplate_value}
    checking_button_displayed_status-and_click_on_button    ${Enter_FlowIntentTitle_OkButton}
    # Click_On_Plus_Icon_In_New_Intent_Template
    Wait Until Page Contains Element    ${Plusicon_FlowIntentTemplate}
    Checking_Icon_displayed_status-and_click_on_Icon    ${Plusicon_FlowIntentTemplate}
    # Input_Title_Name_In_New_Intent

    Wait Until Page Contains Element    ${title_name}
    Checking_textBox_displayed_status-and_input_value_in _textbox    ${title_name}    ${title_name_value_flow }
    # Adding_Question_Inside_The_New_Intent

    Wait Until Page Contains Element    ${enter_question}
    Checking_textBox_displayed_status-and_input_value_in _textbox    ${enter_question}    ${Enter_question_value}
    # Click_AutoSuggestion_Checkbox
    Wait Until Page Contains Element    ${enable_checkbox}
    Checking_Icon_displayed_status-and_click_on_Icon    ${enable_checkbox}
    # Click_On_Add_Cards
    Wait Until Page Contains Element    ${add_cards}
    Checking_Icon_displayed_status-and_click_on_Icon    ${add_cards}
    # Click_On_Text_Cards_Inside_Add_Answer_Cards
    Wait Until Page Contains Element    ${answer_card}
    Checking_Icon_displayed_status-and_click_on_Icon    ${answer_card}
    # Input_Answer_Value_Inside_Text_Answer_Card

    Wait Until Page Contains Element    ${enter_answer}
    Checking_textBox_displayed_status-and_input_value_in _textbox    ${enter_answer}    ${Enter_answer_value}
    # Scroll_DownTo_Feedback_Section_In_Intentpage
    Scroll Element Into View    ${goto_feedback}
    # Click_On_Feedback_Toggle_In_Intentpage
    Wait Until Page Contains Element    ${feedback_toggle}
    Checking_Icon_displayed_status-and_click_on_Icon    ${feedback_toggle}
    # Click_On_Feedback_Note_Toggle_In_Intentpage
    Wait Until Page Contains Element    ${feedback_noteToggle}
    Checking_Icon_displayed_status-and_click_on_Icon    ${feedback_noteToggle}
    # Click_On_Save_Button_To_Save_The_Intent
    Wait Until Page Contains Element    ${button_save}
    Checking_button_displayed_status-and_click_on_button    ${button_save}

Click_On_Save_Button_To_Save_The_Intent
    Wait Until Page Contains Element    ${button_save}
    Checking_button_displayed_status-and_click_on_button    ${button_save}

Validating_Intent_Created_Successfully
    [Arguments]    ${Expected_Intent_success_validation_msg}
    Set Selenium Timeout    10 seconds
    Capture Element Screenshot    ${Newfolder_success_validation_msg}    newtemplatesucesscreenshot.png
    Capture Page Screenshot    newtemplatesucesscreenshotFullpage.png
    Verifying_validation_message    ${success_intent_msg}    ${Expected_Intent_success_validation_msg}

Click_On_Go_Back_Button
    Checking_icon_displayed_status-and_click_on_Icon    ${Intent_GoBack_Btn}

Editing_Intent_TemplateTitleName_And_Validate_successMessage
    [Arguments]    ${expected_Updated_IntentTemplate_success_validation_msg}    ${Edited_IntentTemplateTitle_Value}
    # Checking and clicking on intentTitleTemplate Rename Icon
    Checking_icon_displayed_status-and_click_on_Icon    ${Rename_FlowTitle_Name}
    # Inputting TitleTemplate Name In intentTitleTemplate for editing
    Input_Title_Name_In_New_Intent    ${Edited_IntentTemplateTitle_Value}
    # Clicking on Tick icon
    Checking_icon_displayed_status-and_click_on_Icon    ${FlowTitle_Name_Tick_btn}
    # validate intentTitle update successfully message
    verifying_validation_message    ${success_intent_msg}    ${expected_Updated_IntentTemplate_success_validation_msg}

Click_on_FlowExistingNode
    Wait Until Element Is Visible    ${Existing_FlowTitle_Node}
    Checking_icon_displayed_status-and_click_on_Icon    ${Existing_FlowTitle_Node}

Editing_IntentNodeTemplateTitle_And_Question_And_Validate_successMessage
    [Arguments]
    ...    ${Flow_Updated_IntentNode_success_validation_msg}
    ...    ${Edited_IntentTemplateTitle_Value}
    ...    ${enter_Edited_question}
    # checking and clicking on edit icon in intentNodeTemplate
    Wait Until Element Is Visible    ${FlowIntent_Node_EditIcon}
    Checking_icon_displayed_status-and_click_on_Icon    ${FlowIntent_Node_EditIcon}
    # Inputing Title value in intentNodeTemplate by clearing text
    Clear Element Text    ${title_name}
    Input_Title_Name_In_New_Intent    ${Edited_IntentTemplateTitle_Value}
    # Inputing Question value in intentNodeTemplate by clearing Previous question
    Clear Element Text    ${enter_question}
    Adding_Question_Inside_The_New_Intent    ${enter_Edited_question}
    # Clicking on save button to save the editted change value
    Click_On_Save_Button_To_Save_The_Intent
    # Valiadting Template updated Successfully validation message
    verifying_validation_message    ${success_intent_msg}    ${Flow_Updated_IntentNode_success_validation_msg}

Deleting_IntentNodeTemplateTitle_And_Validate_successMessage
    [Arguments]    ${Flow_Deleted_IntentNode_success_validation_msg}
    # checking and clicking on Delete icon in intentNodeTemplate
    Wait Until Element Is Visible    ${FlowIntent_Node_DeleteIcon}
    Checking_icon_displayed_status-and_click_on_Icon    ${FlowIntent_Node_DeleteIcon}
    # Clicking on Ok button in delete Confirmation Popup
    Checking_icon_displayed_status-and_click_on_Icon    ${IntentNode_delete_popup}
    # validating Intent deleted successfully    Message
    verifying_validation_message
    ...    xpath://*[contains(text(),'Intent deleted successfully')]
    ...    ${Flow_Deleted_IntentNode_success_validation_msg}

Deleting_IntentTemplateTitle_And_Validate_successMessage
    [Arguments]    ${Flow_Deleted_IntentTemplate_success_validation_msg}
    # checking and clicking on Delete icon in intentFolder
    Wait Until Element Is Visible    ${FlowIntent_Template_DeleteIcon}
    Checking_icon_displayed_status-and_click_on_Icon    ${FlowIntent_Template_DeleteIcon}
    # Clicking on Ok button in delete Confirmation Popup
    checking_icon_displayed_status-and_click_on_Icon    ${IntentNode_delete_popup}
    # validating 1 template(s) deleted successfully    Message
    verifying_validation_message
    ...    xpath://div[contains(text(),'1 template(s) deleted successfully')]
    ...    ${Flow_Deleted_IntentTemplate_success_validation_msg}
