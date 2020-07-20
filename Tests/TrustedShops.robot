*** Settings ***
Documentation                                   This is an End to End Test
Resource    ../Keywords/BaseKeywords.robot

Suite Setup   Open test page
Suite Teardown   Close all browsers


*** Test Cases ***
Verify if user can see page logo,search and login icon
    When Open test page
    Then page logo is displayed
    And login button is displayed
    And search icon is displayed



