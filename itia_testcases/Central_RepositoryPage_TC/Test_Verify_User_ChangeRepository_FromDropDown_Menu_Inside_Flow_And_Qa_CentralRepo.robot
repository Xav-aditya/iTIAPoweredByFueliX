*** Settings ***
Resource        ../../utility/itia_import.robot

Test Setup          launching_the_browser
Test Teardown       closing_the_browser

*** Test Cases ***
Testcase_For_Selecting_Repository_ByVisisble_Value_From_RepositoryDropdown
     [Documentation]    This is CR testcase for Selecting Repository values in CentralRepositoryDropdown
     Login_To_Virtual_Assistant_WebApplication   ${username}  ${domain_name}   ${password}  ${analytics&ReportPage_validation_text}
     Click_On_Central_Repository_Icon
     Click_On_Qa_Repository_Button
     Validate_Qa/Flow_Central_Repository_Page    ${QaRepositoryPage_title_validation}
     Capture Page Screenshot    qa-selected-ddown.png
     Click_On_Repository_Dropdown
     Selecting_Repository_ByVisisble_Value_From_RepositoryDropdown       ${Repository_name}
     Capture Page Screenshot    flow-selected-ddown.png

