*** Settings ***
Documentation                                   This is an End to End Test
Resource    ../Keywords/BaseKeywords.robot

Suite Setup   Open test page
Suite Teardown   Close all browsers


*** Test Cases ***
Verify if user can see page logo,search and login icon
    [Tags]  Icons
    #When Open test page
    Then page logo is displayed
    And login button is displayed
    And search icon is displayed


Verify image appears
    [Tags]  video
    When user navigates to image
    Then user checks video
    And user can exit video


Verify if user can click search button
    [Tags]  Search
    When user clicks on search button
    Then user is redirected to shops page
    And list of shopping cites categories is displayed
    #And displayed shopping cites are sorted in alphabetical order


Verify if user can search for Shop Names
    [Tags]  Search Bar
    When user searches for shop name
    Then name of the shop is displayed