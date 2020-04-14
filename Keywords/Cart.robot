*** Settings ***

Resource    ../Keywords/Articles.robot

*** Keywords ***

Verify that first ${num_of_items} items were added into cart
    Click Element                                                               ${cart_navbar}
    Loop through ${num_of_items} and verify that ${item_link_var} is visible

Remove first ${num_of_items} items from cart
    FOR                                     ${num_of_items}     IN RANGE            1    ${num_of_items}+1
    Wait Until Element Is Visible           ${remove_button}
    Wait Until Keyword Succeeds	3x	200ms    Click Button        ${remove_button}
    END
    Wait Until Element Is Not Visible       ${remove_button}

