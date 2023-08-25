*** Settings ***
Resource    ../base.robot
Resource    ../common/common_keywords.robot
Library     ../lib/PageAtributes.py

*** Keywords ***
I visit my shopping cart page whitout selecting any products
    Wait Until Element Is Visible    ${HOME_PAGE.btn_shopping_cart}    ${GENERAL_TIMEOUT}
    Page Should Contain Element      ${HOME_PAGE.btn_shopping_cart}
    Click Element                    ${HOME_PAGE.btn_shopping_cart}