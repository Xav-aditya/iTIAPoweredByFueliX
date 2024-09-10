*** Settings ***
Resource    ../utility/itia_import.robot
Library     XML
Library     Collections
Library     ../itia_libraries/CustomLibrary.py


*** Keywords ***
Create_New_Folder_In_QA
    sl
    Wait Until Element Is Visible    ${Central_Repository}
    checking_element_displayed_status-and_click_on_Icon    ${Central_Repository}
    Verify_title_validation
    checking_element_displayed_status-and_click_on_Icon    ${QA_Repostory_button}
    checking_element_displayed_status-and_click_on_Icon    ${add_new_folder}
    checking_textBox_displayed_status-and_input_value_in _textbox    ${enter_folder_name }    ${folder_name_value}
    checking_element_displayed_status-and_click_on_Icon    ${button_create}
    verifying_validation_message    ${Newfolder_success_validation_msg}    ${expected_newfolder_success_validation_msg}
#    ${qa_folder_listItems}    Get List Items    ${qa_floder_list}
#    Log To Console    ${qa_folder_listItems}
#    Mouse Over    ${folder_menu}
    #    Verify_mouse_hover_action    ${folder_menu}

Create_New_Intent_In_QA
    Wait Until Element Is Visible    ${Central_Repository}
    checking_element_displayed_status-and_click_on_Icon    ${Central_Repository}
    Verify_title_validation
    checking_element_displayed_status-and_click_on_Icon    ${QA_Repostory_button}
    checking_element_displayed_status-and_click_on_Icon    ${add_new_folder}
    checking_textBox_displayed_status-and_input_value_in _textbox    ${enter_folder_name }    ${folder_name_value}
    checking_element_displayed_status-and_click_on_Icon    ${button_create}
    verifying_validation_message    ${Newfolder_success_validation_msg}    ${expected_newfolder_success_validation_msg}
    checking_element_displayed_status-and_click_on_Icon    ${add_intent}
    checking_element_displayed_status-and_click_on_Icon    ${new_intent}
    checking_textBox_displayed_status-and_input_value_in _textbox    ${title_name}    ${qa_title_name_value }
    checking_textBox_displayed_status-and_input_value_in _textbox    ${enter_question}    ${enter_question_value1}
    checking_textBox_displayed_status-and_input_value_in _textbox    ${enter_question}    ${enter_question_value2}
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
    checking_element_displayed_status-and_click_on_Icon    ${back_button}
    checking_element_displayed_status-and_click_on_Icon    ${edit_action_qa}
    Clear Element Text    ${title_name}
    checking_textBox_displayed_status-and_input_value_in _textbox    ${title_name}    ${edit_title_name_qa}
    checking_element_displayed_status-and_click_on_Icon    ${add_question_icon}
    checking_textBox_displayed_status-and_input_value_in _textbox    ${enter_secound_question}      ${edit_question_qa}
    checking_element_displayed_status-and_click_on_Icon    ${ml_dropdown}
    checking_element_displayed_status-and_click_on_Icon    ${select_keyword}
    checking_element_displayed_status-and_click_on_Icon    ${button_save}
    verifying_validation_message    ${success_intent_msg}     ${expected_edit_qa_intent_message}

Edit_The_ExistingInten_In_FLOW
    Create_New_Intent_In_FLOW
    checking_element_displayed_status-and_click_on_Icon    ${back_button}
    checking_element_displayed_status-and_click_on_Icon    ${select_node}
    checking_element_displayed_status-and_click_on_Icon    ${edit_action_flow}
    Clear Element Text    ${title_name}
    checking_textBox_displayed_status-and_input_value_in _textbox    ${title_name}    ${edit_title_name_qa}
    checking_element_displayed_status-and_click_on_Icon    ${add_question_icon}
    checking_textBox_displayed_status-and_input_value_in _textbox    ${enter_secound_question}      ${edit_question_qa}
    checking_element_displayed_status-and_click_on_Icon    ${ml_dropdown}
    checking_element_displayed_status-and_click_on_Icon    ${select_keyword}
    checking_element_displayed_status-and_click_on_Icon    ${button_save}
    verifying_validation_message    ${success_intent_msg}     ${expected_edit_qa_intent_message}
