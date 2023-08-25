*** Settings ***
Resource    ../base.robot
Resource    ../common/common_keywords.robot
Library     ../lib/PageAtributes.py

*** Keywords ***
I add 2 identical products to my shopping cart
    Click Element    ${HOME_PAGE.img_mens_outerwear}

    Wait Until Element Is Visible    ${MENS_OW_PAGE.img_google_grey_outerwear}    ${GENERAL_TIMEOUT}
    Page Should Contain Element      ${MENS_OW_PAGE.img_google_grey_outerwear}
    Click Element                    ${MENS_OW_PAGE.img_google_grey_outerwear}

    Click Element    ${MENS_OW_PAGE.select_box_quantity}
    Click Element    ${MENS_OW_PAGE.select_box_option_2}
    Click Element    ${CART_PAGE.btn_add_to_cart}
    Click Element    ${CART_PAGE.btn_view_cart}

I remove them
    Wait Until Element Is Visible    ${CART_PAGE.btn_remove_item}    ${GENERAL_TIMEOUT}
    Page Should Contain Element      ${CART_PAGE.btn_remove_item}
    Click Element                    ${CART_PAGE.btn_remove_item}