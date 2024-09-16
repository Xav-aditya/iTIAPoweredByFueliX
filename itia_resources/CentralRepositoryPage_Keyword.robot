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
#    checking_element_displayed_status-and_click_on_Icon    ${add_new_folder}
#    checking_textBox_displayed_status-and_input_value_in _textbox    ${enter_folder_name }    ${folder_name_value}
#    checking_element_displayed_status-and_click_on_Icon    ${button_create}
#    verifying_validation_message    ${Newfolder_success_validation_msg}    ${expected_newfolder_success_validation_msg}
    # Assuming Get Text fetches a string with newline-separated items
#    Sleep    2
#    # Assuming Get Text fetches a string with newline-separated items
#    ${list}    Get Text    xpath://div[@data-testid='virtuoso-item-list']
#    Log To Console    ${list}
#    Log To Console    ${list_type}
#
#    # Setting the string to compare against
#    ${str1}    Set Variable    Test_AutomationRPA
#
#    # Split the list by newline since the items are newline-separated
#    ${items}    Split String    ${list}    \n
#    Log To Console    ${items}
#
#    # Iterate over each item in the split list
#    FOR    ${item}    IN    ${items}
#        Log To Console    Current Item: ${item}
#        IF    "${item}" == "${str1}"
#            Log To Console    If condition working: Found Test_AutomationRPA
#        ELSE
#            Log To Console    Not a match: ${item}
#        END
#    END

Create_New_Intent_In_QA
    Wait Until Element Is Visible    ${Central_Repository}
    checking_element_displayed_status-and_click_on_Icon    ${Central_Repository}
    Verify_title_validation
    checking_element_displayed_status-and_click_on_Icon    ${QA_Repostory_button}
    checking_element_displayed_status-and_click_on_Icon    ${add_new_folder_qa}
    checking_textBox_displayed_status-and_input_value_in _textbox    ${enter_folder_name_qa }    ${folder_name_value}
    checking_element_displayed_status-and_click_on_Icon    ${button_create_qa}
    verifying_validation_message    ${Newfolder_success_validation_msg_qa}    ${expected_newfolder_success_validation_msg}
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

Create_New_Intent_In_FLOW
    Wait Until Element Is Visible    ${Central_Repository}
    checking_element_displayed_status-and_click_on_Icon    ${Central_Repository}
    Verify_title_validation
    checking_element_displayed_status-and_click_on_Icon    ${FLOW_Respository_button}
    checking_element_displayed_status-and_click_on_Icon    ${add_new_folder}
    checking_textBox_displayed_status-and_input_value_in _textbox    ${enter_folder_name }    ${folder_name_value}
    checking_element_displayed_status-and_click_on_Icon    ${button_create}
    verifying_validation_message
    ...    ${Newfolder_success_validation_msg}
    ...    ${expected_newfolder_success_validation_msg1}
    checking_element_displayed_status-and_click_on_Icon    ${add_intent}
    checking_element_displayed_status-and_click_on_Icon    ${new_intent}
    checking_textBox_displayed_status-and_input_value_in _textbox    ${template_name}    ${flow_title_name_value }
    checking_element_displayed_status-and_click_on_Icon    ${button_ok}
    checking_element_displayed_status-and_click_on_Icon    ${add_newNode}
    checking_textBox_displayed_status-and_input_value_in _textbox    ${title_name}    ${flow_title_name_value }
    checking_textBox_displayed_status-and_input_value_in _textbox    ${enter_question}    ${enter_question_value1}
    Wait Until Element Is Visible    ${enable_checkbox}
    Mouse Over    ${enable_checkbox}
    checking_element_displayed_status-and_click_on_Icon    ${enable_checkbox}
    checking_element_displayed_status-and_click_on_Icon    ${add_cards}
    checking_element_displayed_status-and_click_on_Icon    ${answer_card}
    checking_textBox_displayed_status-and_input_value_in _textbox    ${enter_answer}    ${enter_answer_value}
    Mouse Over    ${goto_feedback}
    checking_element_displayed_status-and_click_on_Icon    ${goto_feedback}
    checking_element_displayed_status-and_click_on_Icon    ${feedback_toggle}
    checking_element_displayed_status-and_click_on_Icon    ${button_save}
    verifying_validation_message    ${success_intent_msg}    ${expected_Intent_success_validation_msg}

Edit_The_ExistingInten_In_QA
    Create_New_Intent_In_QA
    checking_element_displayed_status-and_click_on_Icon    ${back_button_qa}
    checking_element_displayed_status-and_click_on_Icon    ${edit_action_qa}
    Clear Element Text    ${title_name_qa}
    checking_textBox_displayed_status-and_input_value_in _textbox    ${title_name_qa}    ${edit_title_name_qa}
    checking_element_displayed_status-and_click_on_Icon    ${add_question_icon_qa}
    checking_textBox_displayed_status-and_input_value_in _textbox    ${enter_secound_question_qa}    ${edit_question_qa}
    checking_element_displayed_status-and_click_on_Icon    ${button_save_qa}
    verifying_validation_message    ${success_intent_msg_qa}    ${expected_edit_qa_intent_message}

Duplicate_The_ExistingIntet_In_QA
    checking_element_displayed_status-and_click_on_Icon    ${back_button_qa}
    checking_element_displayed_status-and_click_on_Icon    ${duplicate_action_qa}
    checking_element_displayed_status-and_click_on_Icon    ${select_folder_popUp_qa}
    checking_element_displayed_status-and_click_on_Icon    ${button_done_popUp_qa}
    verifying_validation_message    ${duplicate_intent_success_validation_msg_qa}    ${expected_duplicate_sccess_message}

Delete_The_Intent_In_QA
#    checking_element_displayed_status-and_click_on_Icon    ${back_button}
    checking_element_displayed_status-and_click_on_Icon    ${delete_action_qa}
    checking_element_displayed_status-and_click_on_Icon    ${confirm_delete_button_qa}
    Wait Until Element Is Visible    ${delete_intent_success_validation_msg_qa}
    verifying_validation_message
    ...    ${delete_intent_success_validation_msg_qa}
    ...    ${expected_delete_intent_success_message}

Edit_The_ExistingInten_In_FLOW
    Create_New_Intent_In_FLOW
    checking_element_displayed_status-and_click_on_Icon    ${back_button_qa}
    checking_element_displayed_status-and_click_on_Icon    ${select_node}
    checking_element_displayed_status-and_click_on_Icon    ${edit_action_flow}
    Clear Element Text    ${title_name}
    checking_textBox_displayed_status-and_input_value_in _textbox    ${title_name}    ${edit_title_name_qa}
    checking_element_displayed_status-and_click_on_Icon    ${add_question_icon}
    checking_textBox_displayed_status-and_input_value_in _textbox    ${enter_secound_question}    ${edit_question_qa}
    checking_element_displayed_status-and_click_on_Icon    ${ml_dropdown}
    checking_element_displayed_status-and_click_on_Icon    ${select_keyword}
    checking_element_displayed_status-and_click_on_Icon    ${button_save}
    verifying_validation_message    ${success_intent_msg}    ${expected_edit_qa_intent_message}

AnswerCard_Inside_Intent_To_Qa
    Wait Until Element Is Visible    ${Central_Repository}
    checking_element_displayed_status-and_click_on_Icon    ${Central_Repository}
    Verify_title_validation
    checking_element_displayed_status-and_click_on_Icon    ${QA_Repostory_button}
    checking_element_displayed_status-and_click_on_Icon    ${add_new_folder_qa}
    checking_textBox_displayed_status-and_input_value_in _textbox    ${enter_folder_name_qa}    ${folder_name_value}
    checking_element_displayed_status-and_click_on_Icon    ${button_create_qa}
    verifying_validation_message    ${Newfolder_success_validation_msg_qa}    ${expected_newfolder_success_validation_msg}
    checking_element_displayed_status-and_click_on_Icon    ${add_intent_qa}
    checking_element_displayed_status-and_click_on_Icon    ${new_intent_qa}
    checking_textBox_displayed_status-and_input_value_in _textbox    ${title_name_qa}    ${qa_title_name_value }
    checking_textBox_displayed_status-and_input_value_in _textbox    ${enter_question_qa}    ${enter_question_value1}
    Wait Until Element Is Visible    ${enable_checkbox_qa}
    Mouse Over    ${enable_checkbox_qa}
    checking_element_displayed_status-and_click_on_Icon    ${enable_checkbox_qa}
    checking_element_displayed_status-and_click_on_Icon    ${add_cards_qa}

#Text Card
    checking_element_displayed_status-and_click_on_Icon    ${answer_card_qa}
    checking_textBox_displayed_status-and_input_value_in _textbox    ${enter_answer_qa}    ${enter_answer_value}

#URL Card
    checking_element_displayed_status-and_click_on_Icon    ${url_card_qa}
    checking_textBox_displayed_status-and_input_value_in _textbox    ${enter_url_qa}    ${vaild_url}

#Shuffle Card
    checking_element_displayed_status-and_click_on_Icon    ${shuffle_card_qa}
    checking_element_displayed_status-and_click_on_Icon    ${add_shuffle_card_qa}
    checking_textBox_displayed_status-and_input_value_in _textbox    ${shuffle_text1_qa}    ${shuffle_text1}
    checking_element_displayed_status-and_click_on_Icon    ${add_shuffle_card_qa}
    checking_textBox_displayed_status-and_input_value_in _textbox    ${shuffle_text2_qa}    ${shuffle_text2}

#Video Card
    checking_element_displayed_status-and_click_on_Icon    ${video_card_qa}
    checking_textBox_displayed_status-and_input_value_in _textbox    ${enter_video_url_qa}    ${video_card_url}
    checking_element_displayed_status-and_click_on_Icon    ${video_done_button_qa}

#Image Card
    checking_element_displayed_status-and_click_on_Icon    ${image_card_qa1}
    Choose File    ${add_image_in_imagecard_qa}    ${image_file3}
    Sleep    5

#Carousel Card with query
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

