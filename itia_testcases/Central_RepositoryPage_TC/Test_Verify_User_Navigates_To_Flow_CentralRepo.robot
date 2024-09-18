*** Settings ***
Resource        ../../utility/itia_import.robot

Test Setup      launching_the_browser
Test Teardown       closing_the_browser

*** Test Cases ***

Verify_User_Navigates_To_Flow/Qa_CentralRepo
    [Documentation]    This is test for verifying if user is able to navigate successfully to flow type central repository
    [Tags]     functional testcase
    Verify_Login_With_Valid_Credentials
    Click_CentralRepo_icon_onNavigationMenu
    Sleep    2 seconds
    click_CentralRepo_Flow_folder
    Sleep    2 seconds
  
    Wait Until Element Is Visible    //span[@title='${FolderName}']
    Scroll Element Into View        (//span[@title='akshay']/following::div/div[@class='icon-ellipsis'])[1]
    #Click Element     //span[@title='${FolderName}']
    #Click Element    //div[@id='simple-menu']/div/ul/li/div/div
#    Mouse Over           //span[@title='${FolderName}']
#    ${for_value}=   Get Element Attribute  //span[@title='${FolderName}']
#    Log To Console  ${for_value}
     Sleep    2 seconds
#    Open Context Menu         //div[@id='short_tree_root']/div[1]/div[1]/div[1]/div[1]/div[4]/div[1]/div[1]/div[1]/div[1]/div[1]/div[1]/div[1]/div[2]/div[1]
#    Click Element    //div[text()='New Folder']
#    Sleep    2 seconds