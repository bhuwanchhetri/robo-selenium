*** Settings ***
Documentation  Basic Search Functionality
Resource  ../../Resources/CommonFunctionality.robot
Resource  ../../Resources/amazon_UserDefinedKeywords.robot
Resource  ../../Resources/PageObjects/HeaderPage.robot
Resource  ../../Resources/PageObjects/SearchResultsPage.robot


Test Setup  CommonFunctionality.Start TestCase
Test Teardown   CommonFunctionality.Finish TestCase

*** Variables ***
*** Test Cases ***

Verify basic search functionality for amazon
    [Documentation]  This test case verfies the basic search
    [Tags]  Functional
                                                              
    HeaderPage.Input Search Text and Click Search
    SearchResultsPage.Verify Search Results
    amazon_UserDefinedKeywords.Sort Results by condition
    amazon_UserDefinedKeywords.Verify filter results

Verify climate pledge friendly checked
     [Documentation]  This test case verfies the checkbox function
    [Tags]  Functional
    HeaderPage.Click on Climate Pledge Friendly
