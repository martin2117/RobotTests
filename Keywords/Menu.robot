*** Keywords ***

Click on category
    [Arguments]     ${link}
    ${cat_link} =    Replace String   ${cat_menu}    CAT_LINK     ${link}   
    Wait Until Element Is Visible    ${cat_link}
    Click Element                    ${cat_link}   

Click on subcategory
    [Arguments]     ${link}
    ${subcat_link} =    Replace String   ${subcat_menu}    SUBCAT_LINK     ${link}   
    Wait Until Element Is Visible    ${subcat_link}
    Click Element                    ${subcat_link}   