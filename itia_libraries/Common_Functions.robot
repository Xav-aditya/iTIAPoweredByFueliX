*** Settings ***
Resource    ../utility/itia_import.robot


*** Keywords ***
clear_all_ookies
    [Documentation]    Clear all cookies
    Delete All Cookies

delete_cookie_by_name
    [Arguments]    ${cookie_name}
    Delete Cookie    ${cookie_name}


double_click_element
    [Arguments]    ${locator}
    Double Click Element    ${locator}

capture_screenshot
    [Arguments]    ${screenshot_name}
    Capture Page Screenshot    ${screenshot_name}



checking_textBox_displayed_status-and_input_value_in _textbox
    [Arguments]    ${Webelement}    ${input_text_value}
    # checking visibility    Status and enabling status for email textbox
    Element Should Be Visible    ${Webelement}
    Element Should Be Enabled    ${Webelement}
    # Inputing value in    textbox-Field
    Clear Element Text  ${Webelement}
    Input Text    ${Webelement}    ${input_text_value}

checking_button_displayed_status-and_click_on_button
    [Arguments]    ${Webelement}
    # checking visibility    Status and enabling status for UI-Buttons
    Element Should Be Visible    ${Webelement}
    # clicking on button
    Click Button    ${Webelement}

checking_element_displayed_status-and_click_on_Icon
    [Arguments]    ${Web-element}
    # checking visibility    Status and enabling status for UI-Icons
    Element Should Be Visible    ${Web-element}
    ## clicking on Icons
    Click Element    ${Web-element}

checking_link_displayed_status-and_click_on_Link
    [Arguments]    ${Webelement}
    # checking visibility    Status and enabling status for hyperlink
    Element Should Be Visible    ${Webelement}
    # clicking on link
    Click Link    ${Webelement}

verifying_validation_message
    [Arguments]    ${Webelement}    ${Expected_message}
    Wait Until Element Is Visible    ${Webelement}
    ${toast_msg}    Get Text    ${Webelement}
    Log To Console    ${toast_msg}
    Should Be Equal    ${toast_msg}     ${Expected_message}

Verify_Login_With_Valid_Credentials
    [Documentation]     Testing Login With Valid Credentials
    [Tags]              Smoke Test
    input_username_onloginpage    ${username}
    click_login_button_onloginpage
    input_domain-name_onloginpage    ${domain_name}
    click_login_button_onloginpage
    input_password_onloginpage    ${password}
    click_login_button_onloginpage

Verify_title_validation
    ${get_url}    Get Location
    Log To Console    ${get_url}
    Should Be Equal    ${get_url}   ${expected_CR_url}

Verify_Click_Element
        [Arguments]     ${WebElement}

        Wait Until Element Is Visible    ${WebElement}
        Click Element    ${WebElement}
Verify_mouse_hover_action
        [Arguments]     ${WebElement}
        Wait Until Element Is Visible    ${WebElement}
        Mouse Over    ${WebElement}

checking_icon_displayed_status-and_click_on_Icon
    [Arguments]    ${Web-element}
    # checking visibility    Status and enabling status for UI-Icons
    Element Should Be Visible    ${Web-element}
    ## clicking on Icons
    Click Element  ${Web-element}