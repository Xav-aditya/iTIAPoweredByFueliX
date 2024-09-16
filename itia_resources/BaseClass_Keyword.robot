*** Settings ***
Resource     ../utility/itia_import.robot

*** Keywords ***
launching_the_browser
        [Documentation]     This keyword for launching the browser
        open browser   	${site-url}         ${browser}
        Maximize Browser Window
        Set Selenium Implicit Wait    10Seconds
        clear_all_ookies
        Set Selenium Speed    0.1

closing_the_browser
        [Documentation]     This keyword for closing the current browser
        Run Keyword If Test Failed    Capture Page Screenshot       Faild_screenshot.png
        Close Browser






