*** Variables ***
${click_chatbot_moduel}                 xpath://li[@data-tip='Chatbots']
${search_bots}                          xpath://input[@placeholder='Enter characters to search']
${click_search}                         xpath://img[@class='search-img']
${get_bots_list}                        xpath://div[@class='d-flex move-body m-t-10-em ']
${transaction_bot}                      xpath://div[@class='inputBoxDiv ellipsis']//input[@title='Transaction Bot MQA']
${selecting_bot}                        xpath://*[contains(text(),'Transaction Bot MQA')]
${create_new_folder_chatbot}            xpath://div[@class='add-new']
${text_folder_name}                     xpath://input[@placeholder='Enter folder name']
${success_folder_msg_chatbot}           xpath://*[@class='MuiAlert-message css-1xsto0d']
${create_button_new_folder}             xpath://button[normalize-space()='Create']
${import_icon_chatbot}                  xpath://span[@data-action-type='import']//img[@class='chatbot-header-icon']
${drop_down_icon_chatbot}               xpath:(//*[name()='svg'][@class='css-8mmkcg'])[2]
${select_qa_folder_chatbot}             xpath://div[@id='react-select-6-option-8']
${qa_list_chatbot}                      xpath://div[@class='category-flow chatbotscreen-cat-flow hide-action-button']//div[@data-testid='virtuoso-item-list']
${search_folder_chatbot}                xpath://input[@id='searchBox']
${import_icon_after_select_chatbot}     xpath://span[normalize-space()='Import']

${floder_list_chatbot}                                xpath://div[@data-testid='virtuoso-item-list']
${train_bot}        xpath://span[@data-action-type='train']//img[@class='chatbot-header-icon']
${train_bot_success_msg}    xpath://div[contains(text(),"'Transaction Bot MQA' bot trained successfully")]