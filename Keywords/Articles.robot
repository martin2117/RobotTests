*** Keywords ***

Loop through ${num_of_items} articles and click on ${button}
    ${item_ids} =                           Create List
    FOR                                     ${num_of_items}          IN RANGE              1                    ${num_of_items}+1
    ${str_of_items} =                       Convert To String        ${num_of_items}       
    ${action_btn} =                         Replace String           ${button}             ITEM_ORDER_NUMBER    ${str_of_items}      
    Wait Until Element Is Visible           ${action_btn}
    Wait Until Keyword Succeeds	3x	200ms    Click Button             ${action_btn}
    ${item_link} =                          Replace String           ${item_href_value}    ITEM_ORDER_NUMBER    ${str_of_items}      
    ${item_id} =                            Get Element Attribute    ${item_link}          id
    Append To List                          ${item_ids}              ${item_id}            
    Sleep                                   2s
    END
    Set Test Variable                       ${item_ids}

Loop through ${num_of_items} and verify that ${element} is visible
    FOR                       ${num_of_items}                    IN RANGE                            1                    ${num_of_items}+1
    ${str_of_items} =         Convert To String                  ${num_of_items}                     
    ${action_element} =       Replace String                     ${element}                          ITEM_ORDER_NUMBER    ${str_of_items}      
    ${xpath_contains_id} =    Evaluate                           "ITEM_ID" in """${element}"""
    Run Keyword If            ${xpath_contains_id}               
    ...                       Element with item id is on page    ${num_of_items}                     ${action_element}
    ...                       ELSE                               Wait Until Page Contains Element    ${action_element}
    END

Element with item id is on page
    [Arguments]                         ${num_of_items}     ${action_element}
    ${item_index} =                     Evaluate            ${num_of_items} - 1
    ${href} =                           Set Variable        
    ${href} =                           Get From List       ${item_ids}            ${item_index}    
    ${link_element} =                   Replace String      ${action_element}      ITEM_ID          ${href} 
    Wait Until Page Contains Element    ${link_element} 

