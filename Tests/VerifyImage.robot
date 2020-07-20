*** Settings ***
Resource    ../Keywords/BaseKeywords.robot

Suite Setup  Open test page
Suite Teardown  Close all browsers


*** Test Cases ***
Verify image appears
    When user navigates to image
    Then user clicks on image
    #And video plays
    #And user can exit video
