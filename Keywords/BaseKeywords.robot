*** Settings ***
Library     SeleniumLibrary
Resource    ../Resources/config.robot
Resource    ../PageObjects/LandingPageObjects.robot


*** Keywords ***
Open test page
    open browser    ${web_url}      ${browser}
    #maximise browser window

#user Navigates to landing page
    #Click Element       ${web_url}

page logo is displayed
    Wait Until Page Contains Element   ${page_logo}  15s
    #Element Should be Visible       ${page_logo}

login button is displayed
    Wait Until Page Contains Element   ${login_locator}  15s

search icon is displayed
    Wait Until Page Contains Element   ${search_icon_locator}  15s



user clicks on search button
    Scroll Element into View    ${search_icon_locator}
    Wait Until Page Contains Element   ${search_icon_locator}  15s
    Click Element    ${search_icon_locator}

user is redirected to shops page
    Wait Until Page Contains Element    ${shops_locator}


list of shopping cites categories is displayed
    Wait Until Element is Visible       ${shops_category}
    Page should not contain             ${no_results_message}

##Get Shops List
#    @{displayed_shops_list} =   Create list
#    ${list_count} = Get Element Count



#displayed shopping cites are sorted in alphabetical order


user searches for shop name
    Input text  ${search_input_field_locator}  21run
    Click element  ${search_button_locator}


name of the shop is displayed
    Wait until element is visible  ${shop_details}
    Page should not contain  ${no_results_message}


user navigates to image
    Scroll element into view  ${image_locator}
    Get Text  ${image_locator}
    Wait until page contains element  ${image_locator}  15s



user checks Video
    Wait until page contains element  ${image_locator}  15s
    #Wait until keyword succeeds  20s
    Click element   ${play_button}
    #Wait until page contains element  ${play_video}
    #Get Element  ${play_video}



user can exit video
    Wait until page contains element  ${close_button}
    Click Element  ${close_button}

#video plays
#    Get Element  ${play_locator}
#    Wait until element is visible  ${play_locator}
#    Click button  ${play_button}






