*** Settings ***
Resource     ../utility/itia_import.robot

*** Keywords ***
Launching_The_Browser
        [Documentation]     This keyword for launching the browser
        open browser   	${site-url}         ${browser}
        Maximize Browser Window
        Set Selenium Implicit Wait    10Seconds
        clear_all_ookies
        Set Selenium Speed    0.01

Closing_The_Browser
        [Documentation]     This keyword for closing the current browser
        Run Keyword If Test Failed    Capture Page Screenshot       Faild_screenshot.png
        Close Browser






