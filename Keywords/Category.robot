*** Settings ***

Resource    ../Keywords/Articles.robot
Resource    ../Keywords/Menu.robot
Resource    ../Variables/Links.robot

*** Keywords ***

Go to subcategory Nocni stolky
    Click on category       ${domacnost}
    Click on subcategory    ${nabytek}
    Click on subcategory    ${loznice}
    Click on subcategory    ${nocni_stolky}

Go to subcategory Skolni batohy
    Click on category       ${deti} 
    Click on subcategory    ${skolni_potreby}
    Click on subcategory    ${skolni_batohy} 

Sort items by price from higher to lower
    Click Element    ${high_price_sort}

Add first ${num_of_items} items into cart
    Loop through ${num_of_items} articles and click on ${add_to_cart_button}
    Loop through ${num_of_items} and verify that ${item_added_button} is visible


