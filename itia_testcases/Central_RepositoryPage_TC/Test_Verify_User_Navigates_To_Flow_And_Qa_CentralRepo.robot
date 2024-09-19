*** Settings ***
Resource        ../../utility/itia_import.robot

Test Setup          launching_the_browser
Test Teardown       closing_the_browser

*** Test Cases ***
Testcase_For_Selecting_QA/Flow_Repository

     [Documentation]    This is CR testcase for Selecting Qa/Flow Repository
     Login_To_Virtual_Assistant_WebApplication   ${username}  ${domain_name}   ${password}  ${analytics&ReportPage_validation_text}
     Click_On_Central_Repository_Icon
     Click_On_Qa_Repository_Button
     Validate_Qa/Flow_Central_Repository_Page    ${QaRepositoryPage_title_validation}
     Capture Page Screenshot    qarepo.png
     Go Back
     Click_On_Central_Repository_Icon
     Click_On_Flow_Repository_Button
     Validate_Qa/Flow_Central_Repository_Page   ${FlowRepositoryPage_title_validation}
     Capture Page Screenshot    Flowrepo.png

