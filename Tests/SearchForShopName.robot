*** Settings ***
Resource    ../Keywords/BaseKeywords.robot


Suite Setup  Open test page
Suite Teardown  Close all browsers

*** Test Cases ***
Verify if user can click search button
    When user clicks on search button
    Then user is redirected to shops page
    And list of shopping cites categories is displayed
    #And displayed shopping cites are sorted in alphabetical order


Verify if user can search for Shop Names
    When user searches for shop name
    #Then name of the shop is displayed




