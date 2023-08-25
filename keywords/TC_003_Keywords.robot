*** Settings ***
Resource    ../base.robot
Resource    ../common/common_keywords.robot
Library     ../lib/PageAtributes.py

*** Keywords ***
I add 3 different products to my shopping cart
    Click Element     ${HOME_PAGE.img_mens_outerwear}
    select mens google grey outerwear product
    add item to cart

    Click Element     ${HOME_PAGE.txt_ladies_outerwear}
    select ladies colorblock wind jacket
    add item to cart

    Click Element     ${HOME_PAGE.txt_mens_tshirts}
    select mens android super hero t-shirt
    add item to cart

    Click Element     ${CART_PAGE.btn_view_cart}    

I checkout
    Click Element     ${CART_PAGE.btn_checkout}
    
    Input Text        ${CHECKOUT_PAGE.input_email}          rennan@test.com
    Input Text        ${CHECKOUT_PAGE.input_phone}          11900552263
    
    Input Text        ${CHECKOUT_PAGE.input_card_holder}    rennan
    Input Text        ${CHECKOUT_PAGE.input_card_number}    222244446666333
    Input Password    ${CHECKOUT_PAGE.input_cvv}            692
    
    Input Text        ${CHECKOUT_PAGE.input_address}        fake adress
    Input Text        ${CHECKOUT_PAGE.input_city}           fake city
    Input Text        ${CHECKOUT_PAGE.input_state}          fake state
    Input Text        ${CHECKOUT_PAGE.input_zip}            00222888

    Click Element     ${CHECKOUT_PAGE.btn_place_order}

select ladies colorblock wind jacket
    Wait Until Element Is Visible    ${LADIES_OW_PAGE.img_ladies_colorblock_wind_jacket}    ${GENERAL_TIMEOUT}
    Page Should Contain Element      ${LADIES_OW_PAGE.img_ladies_colorblock_wind_jacket}
    Click Element                    ${LADIES_OW_PAGE.img_ladies_colorblock_wind_jacket}

select mens android super hero t-shirt
    Wait Until Element Is Visible    ${MENS_TS_PAGE.img_mens_android_super_hero_tshirt}    ${GENERAL_TIMEOUT}
    Page Should Contain Element      ${MENS_TS_PAGE.img_mens_android_super_hero_tshirt}
    Click Element                    ${MENS_TS_PAGE.img_mens_android_super_hero_tshirt}