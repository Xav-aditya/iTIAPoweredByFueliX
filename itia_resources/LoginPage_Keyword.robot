*** Settings ***
Resource    ../utility/itia_import.robot


*** Keywords ***
input_username_onloginpage
    [Arguments]    ${username}
    Sleep    2
    checking_textBox_displayed_status-and_input_value_in _textbox    ${txt_loginpageusername}    ${username}

input_username_onForgotpasswordpage
    [Arguments]    ${username}
    checking_textBox_displayed_status-and_input_value_in _textbox    ${txt_loginpageusername}    ${username}

input_username_onForgotdomainpage
    [Arguments]    ${username}
    checking_textBox_displayed_status-and_input_value_in _textbox    ${txt_loginpageusername}    ${username}

click_login_button_onloginpage
    Wait Until Page Contains Element    ${txt_clickloginbutton}
    checking_button_displayed_status-and_click_on_button    ${txt_clickloginbutton}


click_forgot_domain_link_onloginpage
    Wait Until Page Contains Element    ${link_forgot_domain}
    checking_link_displayed_status-and_click_on_Link    ${link_forgot_domain}

click_forgot_password_link_onloginpage
    Wait Until Page Contains Element    ${link_forgot_password}
    checking_link_displayed_status-and_click_on_Link    ${link_forgot_password}

input_domain-name_onloginpage
    [Arguments]    ${domain_name}
    Wait Until Page Contains Element    ${txt_loginpagedomain}
    checking_textBox_displayed_status-and_input_value_in _textbox    ${txt_loginpagedomain}    ${domain_name}

input_domain-name_onForgotpasswordpage
    [Arguments]    ${domain_name}
    Wait Until Page Contains Element    ${txt_forgotpasswordpagedomain}
    checking_textBox_displayed_status-and_input_value_in _textbox    ${txt_forgotpasswordpagedomain}    ${domain_name}

input_password_onloginpage
    [Arguments]    ${password}
    checking_textBox_displayed_status-and_input_value_in _textbox    ${txt_loginpagepassword}    ${password}

verify_report_and_analytics_message_onloginpage
    [Arguments]    ${analytics&ReportPage_validation_text}
    # wait till user lands on report and Analytics page
    set selenium timeout    3seconds
    Wait Until Page Contains Element    ${txt_reportandanalyticslogo}
    Page Should Contain    ${analytics&ReportPage_validation_text}
    Capture Element Screenshot    ${txt_reportandanalyticslogo}    AnalyticsandReporttextscreenshot.png
    capture_screenshot    AnalyticsandReportpagescreenshot.png

validating_error_message_after_inputing_invalid_username
    [Arguments]    ${Expected_username_error_validation-msg}
    Verifying Validation Message    ${txt_username_error_validation}    ${Expected_username_error_validation-msg}

validating_error_message_after_inputing_invalid_domain_name
    [Arguments]    ${Expected_domain_name_error_validation-msg}
    Set Selenium Timeout    10 seconds
    Verifying Validation Message    ${txt_domain_name_error_validation}    ${Expected_domain_name_error_validation-msg}

validating_error_message_after_inputing_invalid_password
    [Arguments]    ${Expected_password_error_validation-msg}
    Set Selenium Timeout    10 seconds
    Verifying Validation Message    ${txt_password_error_validation}    ${Expected_password_error_validation-msg}

validating_error_message_after_inputing_invalid_email
    [Arguments]    ${Expected_username_error_validation-msg}
    Set Selenium Timeout    10 seconds
    Verifying Validation Message    ${invalid_email}    ${Expected_username_error_validation-msg}

validating_error_message_after_inputing_empty_domain_name
    [Arguments]    ${Expected_domain_name_empty_validation-msg}
    Set Selenium Timeout    10 seconds
    Verifying Validation Message    ${txt_domain_name_empty_validation}    ${Expected_domain_name_empty_validation-msg}

validating_error_message_after_inputing_empty_password
    [Arguments]    ${Expected_password_empty_validation-msg}
    Set Selenium Timeout    10 seconds
    Verifying Validation Message    ${txt_password_empty_validation}    ${Expected_password_empty_validation-msg}

validating_forget_domain_linkSentMessage
    [Arguments]    ${Expected_Forgot_Domain_linkSent_msg}
    Set Selenium Timeout    10 seconds
    Verifying Validation Message
    ...    ${txt_forgot_domain_linkSent_validation_message}
    ...    ${Expected_Forgot_Domain_linkSent_msg}

validating_forget_password_linkSentMessage
    [Arguments]    ${Expected_Forgot_Domain_linkSent_msg}
    Set Selenium Timeout    10 seconds
    Verifying Validation Message
    ...    ${txt_forgot_password_linkSent_validation_message}
    ...    ${Expected_Forgot_Domain_linkSent_msg}

click_submit_button_onForgotdomainpage
    checking_button_displayed_status-and_click_on_button    ${txt_forgot_domain_submit-button}
    Wait Until Page Contains Element    ${txt_forgot_domain_submit-button}

click_submit_button_onForgotpasswordpage
    checking_button_displayed_status-and_click_on_button    ${txt_forgot_password_submit-button}
    Wait Until Page Contains Element    ${txt_forgot_password_submit-button}
