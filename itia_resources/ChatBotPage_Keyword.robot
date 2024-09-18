*** Settings ***
Resource    ../utility/itia_import.robot


*** Keywords ***
SearchBar_Functionality_And_Validate_Results
    checking_element_displayed_status-and_click_on_Icon    ${click_chatbot_moduel}
    checking_textBox_displayed_status-and_input_value_in _textbox    ${search_bots}    ${bot_name}
    checking_element_displayed_status-and_click_on_Icon    ${click_search}
    ${bot_list}    Get Text    ${get_bots_list}
    Log To Console    ${bot_list}

    ${str1}    Set Variable    Transaction Bot MQA

    # Split the list by newline since the items are newline-separated
    ${items}    Split String    ${bot_list}    \n
    Log To Console    ${items}
#    ['Koodo - Unicorn Demo Bot - Do not edit', 'Public Mobile - Unicorn Bot', 'Public Test Bot', 'Test Bot - Vertex', 'Transaction Bot MQA', 'Yasmine Helper Bot']
    # Iterate over each item in the split list
    FOR    ${item}    IN    @{items}
        Log To Console    Current Item: ${item}
        IF    "${item}" == "${str1}"
            checking_element_displayed_status-and_click_on_Icon    ${selecting_bot}
        END
    END
    Sleep    2
    Wait Until Element Is Visible    ${transaction_bot}

Chatbot_CR_Create_New_Intent

    Create_New_Intent_In_QA
    SearchBar_Functionality_And_Validate_Results

Creating_New_Folder_ChatBot

    checking_element_displayed_status-and_click_on_Icon    ${create_new_folder_chatbot}
    checking_textBox_displayed_status-and_input_value_in _textbox    ${text_folder_name}    ${folder_name_value_chatbot}
    checking_element_displayed_status-and_click_on_Icon    ${create_button_new_folder}
    verifying_validation_message    ${success_folder_msg_chatbot}    ${expected_folder_create_chatbot}

Import_Intent_ChatBot

    checking_element_displayed_status-and_click_on_Icon    ${import_icon_chatbot}
    Sleep    2
    checking_element_displayed_status-and_click_on_Icon    ${drop_down_icon_chatbot}

    Mouse Over    ${select_qa_folder_chatbot}
    checking_element_displayed_status-and_click_on_Icon    ${select_qa_folder_chatbot}
    Sleep    2
    # Assuming Get Text fetches a string with newline-separated items
    ${list}    Get Text    ${qa_list_chatbot}
    Log To Console    ${list}

    # Setting the string to compare against
    ${str1}    Set Variable    ${folder_name_value}

    ${select_folder_xpath}    Set Variable    xpath://span[contains(text(),'${str1}')]
    ${select_intent}    Set Variable    xpath://div[@class='d-flex justify-content-between option-list px-3']//*[contains(text(),'${qa_title_name_value }')]

    # Split the list by newline since the items are newline-separated
    ${items}    Split String    ${list}    \n
    Log To Console    ${items}

    # Rename Folder
    # Iterate over each item in the split list
    FOR    ${item}    IN    @{items}
        Log To Console    Current Item: ${item}
        IF    "${item}" == "${str1}"
            checking_element_displayed_status-and_click_on_Icon     ${select_folder_xpath}
            checking_textBox_displayed_status-and_input_value_in _textbox    ${search_folder_chatbot}    ${qa_title_name_value }
            checking_element_displayed_status-and_click_on_Icon    ${select_intent}
            checking_element_displayed_status-and_click_on_Icon    ${import_icon_after_select_chatbot}
            verifying_validation_message    ${success_folder_msg_chatbot}     ${expected_intent_import_msg_chatbot}
        END
    END
    Sleep    3

Chatbot_TrainBot_Button
    SearchBar_Functionality_And_Validate_Results
    Sleep    2
    # Assuming Get Text fetches a string with newline-separated items
    ${list}    Get Text    ${floder_list_chatbot}
    Log To Console    ${list}

    # Setting the string to compare against
    ${str1}    Set Variable    ${folder_name_value_chatbot}
    ${rename_xpath}    Set Variable    xpath://span[contains(text(),'${str1}')]

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
            checking_element_displayed_status-and_click_on_Icon    ${train_bot}
            verifying_validation_message    ${Newfolder_success_validation_msg_qa}    ${expected_training_message}
            Wait Until Element Is Visible    ${train_bot_success_msg}       60
            verifying_validation_message    ${train_bot_success_msg}    ${expected_afterTrain_message}
        END
    END
    Sleep    3


#Pulkit TC_02,TC_03,TC_04

Select_Chatboat_And_Validate_SelectedChatboatPage
    [Arguments]   ${Chatboat_Name}
    Wait Until Element Is Visible    xpath://*[@href='/chat-bot']
    checking_link_displayed_status-and_click_on_Link    xpath://*[@href='/chat-bot']
     Wait Until Element Is Visible         xpath://*[text()='${Chatboat_Name}']
    checking_icon_displayed_status-and_click_on_Icon   xpath://*[text()='${Chatboat_Name}']
    set selenium timeout    3seconds
    Wait Until Page Contains Element    //span[@title='Chatbots']
    Page Should Contain  Chatbots
    ${page_title}    Get Element Attribute     xpath://*[@data-testid="inputBoxDiv-ellipsis"]//*[@title="${Chatboat_Name}"]   title
    Should Be Equal    ${page_title}     ${Chatboat_Name}


Click_On_ChatBoat_Dropdown
  [Arguments]   ${Chatboat_Name}
    Wait Until Page Contains Element    xpath://*[@data-testid="inputBoxDiv-ellipsis"]//*[@title="${Chatboat_Name}"]
      Click Element   xpath://*[@data-testid="inputBoxDiv-ellipsis"]//*[@title="${Chatboat_Name}"]

Selecting_ChatBoat_ByVisisble_Value_From_SelectChatboatDropdown
    [Arguments]       ${DropDown_ChatBoat_Select_Value}
      Set Selenium Timeout    3 seconds
      ${element count} =        Get Element Count  //*[@data-testid="inputBoxDiv-ellipsis"]//following::a
    FOR   ${index}  IN RANGE    1   ${element count}
       ${element} =  Get Webelement  //*[@data-testid="inputBoxDiv-ellipsis"]//following::a[${index}]
       ${text}   Get Text     ${element}
       Log To Console   ${text}
       IF    '${text}' == '${DropDown_ChatBoat_Select_Value}'
            Click Element    ${element}
            Exit For Loop
       END
    END



