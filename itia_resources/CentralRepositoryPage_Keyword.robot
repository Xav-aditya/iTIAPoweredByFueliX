*** Settings ***
Resource    ../utility/itia_import.robot


*** Keywords ***

click_CentralRepo_icon_onNavigationMenu
   Wait Until Page Contains Element    ${Central_Repository}
   checking_link_displayed_status-and_click_on_Link   ${Central_Repository}
click_CentralRepo_Flow_folder
    Wait Until Page Contains Element    ${QA_Repository_button}
    checking_link_displayed_status-and_click_on_Link    ${QA_Repository_button}

