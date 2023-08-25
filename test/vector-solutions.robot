*** Settings ***
Resource    ../base.robot
Resource    ../common/bdd.robot
Resource    ../common/common_keywords.robot
Resource    ../keywords/TC_001_Keywords.robot
Resource    ../keywords/TC_002_Keywords.robot
Resource    ../keywords/TC_003_Keywords.robot

Suite Setup    load page object

Test Setup     Start browser
Test Teardown    Close Browser


*** Test Case ***
TC.001 - Check my shopping cart before I start shopping
    [Tags]    @vector
    
    Given    that I access the shopping website home page
    When     I visit my shopping cart page whitout selecting any products
    Then     I need to see the message that my shopping cart is empty
    
TC.002 - Add 2 identical products to my shopping cart and then remove them
    [Tags]    @vector

    Given    that I access the shopping website home page
    When     I add 2 identical products to my shopping cart
    And      I remove them 
    Then     I need to see the message that my shopping cart is empty

TC.002 - Add 3 different products to my shopping cart and check out successfully
    [Tags]    @vector

    Given    that I access the shopping website home page
    When     I add 3 different products to my shopping cart
    And      I checkout
    Then     I need to see the thank you message