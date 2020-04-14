*** Settings ***
Library     SeleniumLibrary
Library     String
Library     Collections
Resource    ../Keywords/Cart.robot
Resource    ../Keywords/Category.robot
Resource    ../Keywords/Menu.robot
Resource    ../Variables/Locators.robot

Test Setup       Run Keywords     Open browser    ${application_url}    chrome    AND    Maximize Browser Window
Test Teardown    Close browser

*** Variables ***
${number_of_items} =    2

*** Test Cases ***

Add ${number_of_items} most expensive bed tables into shopping cart
    Go to subcategory Nocni stolky
    Sort items by price from higher to lower
    Add first ${number_of_items} items into cart
    Verify that first ${number_of_items} items were added into cart
    Remove first ${number_of_items} items from cart

Add ${number_of_items} most expensive school bags into shopping cart
    Go to subcategory Skolni batohy
    Sort items by price from higher to lower
    Add first ${number_of_items} items into cart
    Verify that first ${number_of_items} items were added into cart
    Remove first ${number_of_items} items from cart