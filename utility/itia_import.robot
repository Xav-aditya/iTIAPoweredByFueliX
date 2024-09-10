*** Settings ***
Library     SeleniumLibrary    run_on_failure=Capture Page Screenshot
# Library files
Library     SeleniumLibrary
Library     OperatingSystem
# PageObjectlocatorFiles
Resource    ../itia_pageobject/LoginPage_Locators.robot
Resource    ../itia_pageobject/AnalyticsAndReportPage_Locators.robot
Resource     ../itia_pageobject/CentralRepositoryPage_Locators.robot
# Page-KeywordFiles
Resource    ../itia_resources/LoginPage_Keyword.robot
Resource    ../itia_resources/BaseClass_Keyword.robot
Resource    ../itia_resources/LogoutPage_Keyword.robot
Resource        ../itia_resources/CentralRepositoryPage_Keyword.robot
# DataFiles
Resource    ../itia_datafiles/CentralRepositoryPage_Variables.robot
Resource    ../itia_datafiles/LoginPage_Variables.robot
Resource    ../itia_datafiles/AnalyticsAndReportPage_Variables.robot
# cutomizedFunction
Resource    ../itia_libraries/Common_Functions.robot
