*** Settings ***
Resource        ../itia_libraries/Common_Functions.robot

*** Variables ***
${folder_name_value}                                        Test_AutomationRPA
${expected_newfolder_success_validation_msg}                Added successfully!
${qa_title_name_value }                                     TestIntent123
${enter_question_value1}                                    I want to know my billing details
${enter_question_value2}                                    What is the status of My Billing
${enter_question_value3}                                    Would you like to learn more about a specific topic?
${enter_question_value4}                                    Is there a particular service or feature you're interested in?
${enter_answer_value}                                       Thanks for asking about your billing details.Your billing account no is 1203546789
${enter_url_value_inSource}                                 https://www.google.com/
${expected_Intent_success_validation_msg}                   Template Created Successfully.
${expected_CR_url}                                          https://mqa2.xavlab.xyz/central-repository
${flow_title_name_value }                                   TestIntent123
${expected_newfolder_success_validation_msg1}               Template Created Successfully.
${expected_edit_qa_intent_message}                          Template Updated Successfully.
${edit_title_name_qa}                                       TestRPA
${edit_question_qa}                                         I want to know my billing details
${expected_delete_intent_success_message}                   1 template(s) deleted successfully
${expected_duplicate_sccess_message}                        Duplicate interaction created successfully
${vaild_url}                                                https://www.w3schools.com/python/python_lists_loop.asp
${File_To_Upload1}                                          pic4.jpg
${File_To_Upload2}                                          pic3.jpg
${File_To_Upload3}                                          pic5.jpg
${image_file1}                                              ${CURDIR}${/}${File_To_Upload1}
${image_file2}                                              ${CURDIR}${/}${File_To_Upload2}
${image_file3}                                              ${CURDIR}${/}${File_To_Upload3}
${shuffle_text1}                                            Test1
${shuffle_text2}                                            Test2
${video_card_url}                                           https://videos.ctfassets.net/3viuren4us1n/3JMEuX4EMmWQNj9P6DPBv6/8f0e05c7744a0976685547b957e18b97/Fuel-iX-decorative-video.mp4
${carouselcard_text_value1}                                 Test1
${carouselcard_text_value2}                                 Test2
${button_title1}                                            Button1
${button_title2}                                            Button2
${query1}                                                   Explain all Answer cards in the chat bot
${url_popup}                                                https://www.w3schools.com/cssref/css_selectors.php
${update_name}                                              Test123
${expected_rename_folder_message}                           Updated successfully!
${expected_delete_folder_message}                           Deleted successfully!

# Pulkit code

${CentralRepositoryPage_title_validation}                   Central Repository
${FlowRepositoryPage_title_validation}                      FLOW
${QaRepositoryPage_title_validation}                        QA

${folder_name_value_flow}                                   AutomationTestFolder
${input_FlowIntentTemplate_value}                           FlowIntentUsingAutomation
${expected_newfolder_success_validation_msg}                Added successfully!
${title_name_value_flow }                                   TestIntent123
${Edited_IntentTemplateTitle_Value}                         editedintent
${Repository_name}                                          FLOW
${enter_question_value}                                     I want to know my billing details
${enter_Edited_question}                                    Give me my billing details
${enter_answer_value}                                       Thanks for asking about your billing details.Your billing account no is 1203546789
${enter_url_value_inSource}                                 https://www.google.com/
${expected_Intent_success_validation_msg}                   Template Created Successfully.
${Flow_Updated_IntentTemplate_success_validation_msg}       Template updated successfully!
${Flow_Updated_IntentNode_success_validation_msg}           Template Updated Successfully.
${Flow_Deleted_IntentNode_success_validation_msg}           Intent deleted successfully
${Flow_Deleted_IntentTemplate_success_validation_msg}       1 template(s) deleted successfully

