*** Settings ***
Resource    ../utility/itia_import.robot

*** Keywords ***
logout_the_Application
        Sleep    2
#        Capture Page Screenshot
        verifying_element_clickable     ${cli_profile}
        Sleep    2
#        Capture Page Screenshot
        verifying_element_clickable     ${cli_logout}
