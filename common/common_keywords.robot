*** Settings ***
Resource    ../base.robot
Library     ../lib/PageAtributes.py

*** Keywords ***
load page object
    ${HOME_PAGE}=       get_page_attributes    home_page
    ${CART_PAGE}=       get_page_attributes    cart_page
    ${END_PAGE}=        get_page_attributes    end_page
    ${MENS_OW_PAGE}=    get_page_attributes    mens_ow_page

    Set Suite Variable    ${HOME_PAGE}
    Set Suite Variable    ${CART_PAGE}
    Set Suite Variable    ${END_PAGE}
    Set Suite Variable    ${MENS_OW_PAGE}

Start browser
    Open Browser    ${BASE_URL}    ${BROWSER}

that I access the shopping website home page
    Wait Until Element Is Visible    ${HOME_PAGE.txt_logo}    ${GENERAL_TIMEOUT}
    Page Should Contain Element      ${HOME_PAGE.txt_logo}

    Wait Until Element Is Visible    ${HOME_PAGE.btn_shopping_cart}    ${GENERAL_TIMEOUT}
    Page Should Contain Element      ${HOME_PAGE.btn_shopping_cart}

    Wait Until Element Is Visible    ${HOME_PAGE.img_mens_outerwear}    ${GENERAL_TIMEOUT}
    Page Should Contain Element      ${HOME_PAGE.img_mens_outerwear}

    Wait Until Element Is Visible    ${HOME_PAGE.img_ladies_outerwear}    ${GENERAL_TIMEOUT}
    Page Should Contain Element      ${HOME_PAGE.img_ladies_outerwear}

    Wait Until Element Is Visible    ${HOME_PAGE.img_mens_tshirt}    ${GENERAL_TIMEOUT}
    Page Should Contain Element      ${HOME_PAGE.img_mens_tshirt}

    Wait Until Element Is Visible    ${HOME_PAGE.img_ladies_tshirt}    ${GENERAL_TIMEOUT}
    Page Should Contain Element      ${HOME_PAGE.img_ladies_tshirt}

I need to see the message that my shopping cart is empty
    Wait Until Element Is Visible    ${CART_PAGE.txt_your}    ${GENERAL_TIMEOUT}
    Page Should Contain Element      ${CART_PAGE.txt_your}

    Wait Until Element Is Visible    ${CART_PAGE.txt_is_empty}    ${GENERAL_TIMEOUT}
    Page Should Contain Element      ${CART_PAGE.txt_is_empty}

I need to see the thank you message
    Wait Until Element Is Visible    ${END_PAGE.txt_thank_you}    ${GENERAL_TIMEOUT}
    Page Should Contain Element      ${END_PAGE.txt_thank_you}

    Wait Until Element Is Visible    ${END_PAGE.txt_demo_complete}    ${GENERAL_TIMEOUT}
    Page Should Contain Element      ${END_PAGE.txt_demo_complete}

    Wait Until Element Is Visible    ${END_PAGE.btn_finish}    ${GENERAL_TIMEOUT}
    Page Should Contain Element      ${END_PAGE.btn_finish}
    Click Element                    ${END_PAGE.btn_finish}