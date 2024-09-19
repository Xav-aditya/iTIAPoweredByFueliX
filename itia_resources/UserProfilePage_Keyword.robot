*** Settings ***
Resource    ../utility/itia_import.robot

*** Keywords ***
Click_On_User_Profile_Icon
    TRY
        Checking_icon_displayed_status-and_click_on_Icon    ${icon_userProfileImage}
        Log To Console    "clicked on profile with image"
    EXCEPT
        Checking_icon_displayed_status-and_click_on_Icon    ${icon_userImage} 
        Log To Console    "clicked on profile without image"
    END
    
    
Edit_Display_Name_And_Validate_Success_Message
    Click Element        ${icon_Profile}
    Checking_icon_displayed_status-and_click_on_Icon        ${icon_editProfile}
    Checking_textBox_displayed_status-and_input_value_in _textbox      ${txt_displayName}   ${display_name}
    Checking_button_displayed_status-and_click_on_button    ${button_UserProfile_Save}
    Verifying_validation_message        ${Success_Message}   User profile edited successfully.



Edit_Preferred_Bot_And_Validate_Success_Message
    Click Element        ${icon_Profile}
    Checking_icon_displayed_status-and_click_on_Icon        ${icon_editProfile}
    checking_element_displayed_status-and_click_on_Icon    xpath:(//*[@class='svg-inline--fa fa-angle-down fa-w-10 w-14'])[2]
    checking_element_displayed_status-and_click_on_Icon    xpath:(//a[normalize-space()='Transaction Bot MQA'])[1]

#    Checking_textBox_displayed_status-and_input_value_in _textbox      ${txt_preferredBotName}   ${preferred_bot}
    Checking_button_displayed_status-and_click_on_button    ${button_UserProfile_Save}
    Verifying_validation_message        ${Success_Message}   User profile edited successfully.


Edit_Preferred_Language_And_Validate_Success_Message
    Click Element        ${icon_Profile}
    Checking_icon_displayed_status-and_click_on_Icon        ${icon_editProfile}
    Checking_textBox_displayed_status-and_input_value_in _textbox      ${txt_preferredLanguage}  ${preferred_language}
    Checking_icon_displayed_status-and_click_on_Icon        ${dropdownSelect_preferredLanguage}
    Checking_button_displayed_status-and_click_on_button    ${button_UserProfile_Save}
    Verifying_validation_message        ${Success_Message}   User profile edited successfully.
    
Remove_Profile_Picture_And_Validate_Success_Message
    Click Element        ${icon_Profile}
    Checking_icon_displayed_status-and_click_on_Icon        ${icon_editProfile}
    
    TRY
        Checking_icon_displayed_status-and_click_on_Icon        ${icon_removeProfilePicture} 
        Checking_button_displayed_status-and_click_on_button    ${button_UserProfile_remove}
        Checking_button_displayed_status-and_click_on_button    ${button_UserProfile_Save}
        Verifying_validation_message        ${Success_Message}   User profile edited successfully.

            
    EXCEPT
        Checking_button_displayed_status-and_click_on_button    ${button_UserProfile_cancel}
         Log To Console    Profile picture was not there
    END

Enable_Disable_Allow_Notification_Tone_And_Validate_Success_Message
    Click Element        ${icon_Profile}
    Checking_icon_displayed_status-and_click_on_Icon        ${icon_editProfile}
    Checking_icon_displayed_status-and_click_on_Icon        ${toggle_UserProfile_notification}
    Checking_button_displayed_status-and_click_on_button    ${button_UserProfile_Save}
    Verifying_validation_message        ${Success_Message}   User profile edited successfully.


Upload_Profile_Picture_And_Validate_Success_Message

    Click Element        ${icon_Profile}
    Checking_icon_displayed_status-and_click_on_Icon        ${icon_editProfile}
#    Checking_icon_displayed_status-and_click_on_Icon        ${icon_uploadProfilePicture}
    #Input Text     //input[@id='uploadFlie']    f"{Path.cwd()}/Files/scratch.jpg"
#    ${File_To_Upload1}    scratch.jpg
#    ${image_file1}        ${CURDIR}${/}${File_To_Upload1}
    Sleep    2
    Choose File    xpath://label[contains(text(),'Upload image')]//following::input[@data-testid='uploadAvatar']      ${image_file3}
    Sleep    2
    Checking_button_displayed_status-and_click_on_button    ${button_UserProfile_Save}
    Verifying_validation_message        ${Success_Message}   User profile edited successfully.

