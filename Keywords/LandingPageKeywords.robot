#*** Settings ***
#
#
#*** Keywords ***
#user Navigates to landing page
#    Click Element       ${web_url}
#
#
#page logo is displayed
#    Wait Until Element is visible   ${page_logo}
#    Element Should be Visible       ${page_logo}