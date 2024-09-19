*** Variables ***
${Central_Repository}                               xpath://*[@data-tip='Central Repository']
# QA
${QA_Repostory_button}                              xpath://*[@title='QA']
${add_new_folder_qa}                                xpath://*[@class='add-new']
${enter_folder_name_qa}                             xpath://*[@placeholder='Enter folder name']
${button_create_qa}                                 xpath://*[@data-testid='promptokbutton']
${Newfolder_success_validation_msg_qa}              xpath://div[@class='MuiAlert-message css-1xsto0d']
${add_intent_qa}                                    xpath://*[@class='lang_dropIcon']
${new_intent_qa}                                    xpath://span[contains(text(),'New Intent')]
${title_name_qa}                                    xpath://*[@placeholder='Enter template title here']
${enter_question_qa}                                xpath://*[@data-placeholder='Add question here']
${enable_checkbox_qa}                               xpath:(//span[@class='checkmark'])[1]
${add_cards_qa}                                     xpath://*[@class='add-card-button']
${answer_card_qa}                                   xpath://*[@data-tip='Text Card'][1]
${enter_answer_qa}                                  xpath://*[@class='ql-editor ql-blank']
${goto_feedback_qa}                                 xpath://*[@data-testid='feedback_ans_box']
${feedback_toggle_qa}                               xpath:(//*[@class='react-switch-handle'])[2]
${feedback_noteToggle_qa}                           xpath:(//*[@class='react-switch-handle'])[3]
${one_source_qa}                                    xpath:(//*[@class='react-switch-handle'])[4]
${button_save_qa}                                   xpath://*[@class='btn b-success btn-spacing undefined']
${success_intent_msg_qa}                            xpath://*[@class='MuiAlert-message css-1xsto0d']
${close_success_msg_qa}                             xpath://*[@data-testid='CloseIcon']
${qa_floder_list_qa}                                xpath://div[@data-testid='virtuoso-item-list']
${qa_select_folder_qa}                              xpath://span[@title='Test_AutomationRPA']
${folder_menu_qa}                                   xpath://div[@class='icon-ellipsis-tree-show']

# QA_Rename_Delete
${select_folder_QA}                                 xpath://span[contains(text(),'Test_AutomationRPA')]
${menu_qa}                                          xpath:(//span[@title='Test_AutomationRPA']/following::div/div[@class='icon-ellipsis'])[1]
${menu_rename}                                      xpath://div[contains(text(),'Rename')]
${menu_delete}                                      xpath://div[contains(text(),'Delete')]
${rename_text_foler_qa}                             xpath://input[@placeholder='Folder name']
${update_folder_name_qa}                            xpath://button[normalize-space()='Update']
${delete_folder_qa}                                 xpath://button[normalize-space()='Delete']

## Flow
# ${FLOW_Respository_button}    xpath://a[normalize-space()='FLOW']
# ${add_new_folder}    xpath://*[@class='add-new']
# ${enter_folder_name }    xpath://*[@placeholder='Enter folder name']
# ${button_create}    xpath://*[@data-testid='promptokbutton']
# ${Newfolder_success_validation_msg}    xpath://div[@class='MuiAlert-message css-1xsto0d']
# ${add_intent}    xpath://*[@class='lang_dropIcon']
# ${new_intent}    xpath://span[contains(text(),'New Intent')]
# ${template_name}    xpath://input[@placeholder='Enter template name']
# ${button_ok}    xpath://button[normalize-space()='Ok']
# ${add_newNode}    xpath://div[@id='startRootNode-add-btn']
# ${title_name}    xpath://input[@placeholder='Enter template name']
# ${enter_question}    xpath://*[@data-placeholder='Add question here']
# ${enable_checkbox}    xpath:(//span[@class='checkmark'])[1]
# ${add_cards}    xpath://*[@class='add-card-button']
# ${answer_card}    xpath://*[@data-tip='Text Card'][1]
# ${enter_answer}    xpath://*[@class='ql-editor ql-blank']
# ${goto_feedback}    xpath://*[@data-testid='feedback_ans_box']
# ${feedback_toggle}    xpath:(//*[@class='react-switch-handle'])[2]
# ${button_save}    xpath://*[@class='btn b-success btn-spacing undefined']
# ${success_intent_msg}    xpath://*[@class='MuiAlert-message css-1xsto0d']

# QA edit existing folder
${back_button_qa}                                   xpath://button[@class='btn b-other']
${edit_action_qa}                                   xpath:(//img[@title='Edit'])[1]
${title_name_qa}                                    xpath://*[@placeholder='Enter template title here']
${add_question_icon_qa}                             xpath://span[normalize-space()='Add Question']
${enter_secound_question_qa}                        xpath:(//*[@data-placeholder='Add question here'])[2]
${ml_dropdown_qa}                                   xpath:(//div[@class=' css-t62vls-indicatorContainer'])[2]
${select_keyword_qa}                                xpath://*[@id='react-select-7-option-1']
${button_save_qa}                                   xpath://*[@class='btn b-success btn-spacing undefined']
${success_intent_msg_qa}                            xpath://*[@class='MuiAlert-message css-1xsto0d']

## FLOW edit existing folder
# ${folder_name_qa}    xpath://div[@class='icon-ellipsis-tree-show']
# ${select_folder_qa}    xpath://*[@data-testid="virtuoso-item-list"]//following::div[contains(@class,'icon-ellipsis')]
# ${select_node}    xpath://div[@class='rst__rowTitle__inner']
# ${edit_action_flow}    xpath://span[@data-action-type='edit']
##${title_name}    xpath://*[@placeholder='Enter template title here']
# ${add_question_icon}    xpath://span[normalize-space()='Add Question']
# ${enter_secound_question}    xpath:(//*[@data-placeholder='Add question here'])[2]
# ${ml_dropdown}    xpath://div[@class=' css-t62vls-indicatorContainer']
# ${select_keyword}    xpath:(//div[@id='react-select-6-option-1'])[1]
# ${button_save}    xpath://*[@class='btn b-success btn-spacing undefined']
# ${success_intent_msg}    xpath://*[@class='MuiAlert-message css-1xsto0d']


${back_button_intent}       xpath://button[@class='btn b-other']

# Delete_Intent_In_QA
${delete_action_qa}                                 xpath://img[@title='Delete']
${confirm_delete_button_qa}                         xpath://button[@data-testid='btn-confirm-done']
${delete_intent_success_validation_msg_qa}          xpath://div[contains(text(),'1 template(s) deleted successfully')]

# Duplicate_Intent_In_QA
${duplicate_action_qa}                              xpath:(//img[@title='Duplicate'])[1]
${select_folder_popUp_qa}                           xpath://div[@class='popup-body force-overflow scrollbar tab-scroll']//span[contains(text(),'Test_AutomationRPA')]
${button_done_popUp_qa}                             xpath://button[normalize-space()='Done']
${duplicate_intent_success_validation_msg_qa}       xpath://div[contains(text(),'Duplicate interaction created successfully')]

# adding answer cards
${url_card_qa}                                      xpath://span[normalize-space()='URL']
${enter_url_qa}                                     xpath://div[@data-placeholder='Enter the URL here']
${shuffle_card_qa}                                  xpath://span[normalize-space()='Shuffle']
${add_shuffle_card_qa}                              xpath:(//span[@class='blockheadig rightblock add-ans mb-2'])[1]
${shuffle_text1_qa}                                 xpath://div[@class='rich-text-textarea']
${shuffle_text2_qa}                                 xpath:(//div[@class='rich-text-textarea'])[2]
${video_card_qa}                                    xpath://span[normalize-space()='Video']
${enter_video_url_qa}                               xpath:(//textarea[@placeholder='Enter video URL'])
${video_done_button_qa}                             xpath://button[normalize-space()='Done']
${carousel_card_qa}                                 xpath://span[normalize-space()='Carousel']
${add_image_carousel_card1_qa}                      xpath://label[@class='hand']

${image_card_qa1}                                   xpath://span[normalize-space()='Image']
${add_image_in_imagecard_qa}                        xpath://label[@class='avatar-btn-upload-card']/following::input[starts-with(@id, 'uploadFile')]
# ${upload_image_carousalcard_qa1}    css=input[id^='uploadFile']
# ${upload_image_carousalcard_qa1}    xpath://div[@class='empty']/following::input[starts-with(@id, 'uploadFile')]
${upload_image_carousalcard_qa1}                    xpath://div[contains(text(),'Add image')]/following::input[starts-with(@id, 'uploadFile')]
${image_path1_qa}                                   xpath://img[@class='template-answer-image']
${after_add_image1}                                 xpath://div[contains(text(),'Add image')]

${carouselcard_title1_qa}                           xpath://div[contains(text(),'Add Title Here')]
${button_title_popup1_qa}                           xpath://div[@data-placeholder='Name can be changed here']
${query_popup1_qa}                                  xpath://div[@data-placeholder='Enter query']
${done_popup1_qa}                                   xpath://button[normalize-space()='Done']
${carousel_card_text1_qa}                           xpath://textarea[@placeholder='Enter text here']

${carousel_card_add_image2_qa}                      xpath://div[normalize-space()='Add Card']
# ${upload_image_carousalcard_qa2}    xpath://div[@class='empty']/following::input[starts-with(@id, 'uploadFile')]
${upload_image_carousalcard_qa2}                    xpath://div[contains(text(),'Add image')]/following::input[starts-with(@id, 'uploadFile')]
${after_add_image2_qa}                              xpath://div[contains(text(),'Add image')]

${carouselcard_title2_qa}                           xpath://div[contains(text(),'Add Title Here')]
${button_title_popup2_qa}                           xpath://div[@data-placeholder='Name can be changed here']
${url_popup_qa}                                     xpath://label[normalize-space()='URL']
${enter_url_popup_qa}                               xpath://div[contains(@data-placeholder,'Enter URL')]
${done_popup2_qa}                                   xpath://button[normalize-space()='Done']
${carousel_card_text2_qa}                           xpath:(//textarea[@placeholder='Enter text here'])[2]

# (//div[@class='icon-ellipsis']//following::span[@title='qa']//following::div[@class='icon-ellipsis'])[1]

# Pulkit Locators for CR FLOW

# ${Central_Repository}    xpath://*[@href='/central-repository']
${Qa_Repostory_button}                              xpath://*[@title='QA']
${Flow_Repostory_button}                            xpath://*[@title='FLOW']
${Central_Repository_page_title}                    xpath://*[@title='Central Repository']
${add_new_folder}                                   xpath://div[@class='add-new']
${enter_folder_name }                               xpath://*[@placeholder='Enter folder name']
${button_create}                                    xpath://*[@data-testid='promptokbutton']
${Newfolder_success_validation_msg}                 xpath://div[@class='MuiAlert-message css-1xsto0d']

# drpdown selection

${Click_on_repository_CRdropdown}                   xpath://*[@data-testid="inputBoxDiv-ellipsis"]//*[@title="QA"]
${Selecting_repository_Webelement_CRdropdown}       xpath://*[@data-testid="inputBoxDiv-ellipsis"]//following::a

# ${Created_NewFolder_inList}    xpath://*[@title="New Test Template123"]
# Creating flow intent
${add_intent}                                       xpath://*[@class='lang_dropIcon']
${new_intent}                                       xpath://span[contains(text(),'New Intent')]
${Enter_FlowIntentTitle}                            xpath://*[@placeholder="Enter template name"]
${Enter_FlowIntentTitle_OkButton}                   xpath://*[@placeholder="Enter template name"]//following::button[text()='Ok']
${Plusicon_FlowIntentTemplate}                      id:startRootNode-add-btn
${title_name}                                       xpath://*[@placeholder='Enter template title here']
${enter_question}                                   xpath://*[@data-placeholder='Add question here']
${enable_checkbox}                                  xpath://*[@class='checkmark']
${add_cards}                                        xpath://*[@class='add-card-button']
${answer_card}                                      xpath://*[@data-tip='Text Card'][1]
${enter_answer}                                     xpath://*[@class='ql-editor ql-blank']
${goto_feedback}                                    xpath://*[@data-testid='feedback_ans_box']
${feedback_toggle}                                  xpath:(//*[@class='react-switch-handle'])[2]
${feedback_noteToggle}                              xpath:(//*[@class='react-switch-handle'])[3]
${one_source}                                       xpath:(//*[@class='react-switch-handle'])[4]
${button_save}                                      xpath://*[@class='btn b-success btn-spacing undefined']
${success_intent_msg}                               xpath://*[@class='MuiAlert-message css-1xsto0d']
${close_success_msg}                                xpath://*[@data-testid='CloseIcon']
${delete_intentTemplate_msg}                        ${EMPTY}

# editing Flow Intent
${Intent_GoBack_Btn}                                xpath: //*[@type="button"and@data-testid="backbutton-btn"]
${Rename_FlowTitle_Name}                            xpath://*[@class="flow-title"]//following::img[@class="flow-title-edit rename"]
${FlowTitle_Name_Tick_btn}                          xpath: //*[@placeholder="Enter template title here"]//following::img[@class="flow-title-edit"]
${Existing_FlowTitle_Node}                          xpath: //*[@data-testid="virtuoso-item-list"]//following::div[@class="rst__rowTitle__inner"]
${FlowIntent_Node_EditIcon}                         xpath://*[@data-tip="Edit Template"]//img
# Deleting Flow Intent
${FlowIntent_Node_DeleteIcon}                       xpath://*[@data-tip="Remove Template"]//img
${IntentNode_delete_popup}                          xpath://*[@data-testid="confirmation-root"]//following::button[@data-testid="btn-confirm-done"]
${FlowIntent_Template_DeleteIcon}                   xpath://*[@title="Delete"]
${IntentNode_delete_success_msg}                    xpath://*[contains(text(),'Intent deleted successfully')]
