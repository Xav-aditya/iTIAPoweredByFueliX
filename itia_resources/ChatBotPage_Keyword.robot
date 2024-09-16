*** Settings ***
Resource    ../utility/itia_import.robot


*** Keywords ***
SearchBar_Functionality_And_Validate_Results
    checking_element_displayed_status-and_click_on_Icon    ${click_chatbot_moduel}
    checking_textBox_displayed_status-and_input_value_in _textbox    ${search_bots}    Bot
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
            checking_element_displayed_status-and_click_on_Icon    //*[contains(text(),'Transaction Bot MQA')]
        END
    END
    Sleep    2
    Wait Until Element Is Visible    ${transaction_bot}
