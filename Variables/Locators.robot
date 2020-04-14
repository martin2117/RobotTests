*** Variables ***

# SETUP
# -----------------------------------------------------------------------------------------------------------------------------------------------------------

# Url addresses
${application_url}    https://www.mall.cz/

# CATEGORIES
# -----------------------------------------------------------------------------------------------------------------------------------------------------------

# Menu
${cat_menu}       //*[contains(@class,'desktop-menu__list')]//*[@href='CAT_LINK']
${subcat_menu}    //*[@id='nav-sec']//*[@href='SUBCAT_LINK']

# Sorters
${high_price_sort}    //*[@data-sel="sort-highPrice"]

# Buttons
${add_to_cart_button}    //*[contains(@class,"lst-product--verbose")]/article[ITEM_ORDER_NUMBER]//button
${item_added_button}     //*[contains(@class,"lst-product--verbose")]/article[ITEM_ORDER_NUMBER]//button[contains(@class, 'action--done')]

# Item links
${item_href_value}    //article[ITEM_ORDER_NUMBER]//a

# SHOPPING CART
# -----------------------------------------------------------------------------------------------------------------------------------------------------------

# Navbar
${cart_navbar}    //*[@data-sel='nav-widget-cart']

# Item links
${item_link_var}    //article[ITEM_ORDER_NUMBER]//*[contains(@href,'ITEM_ID')]

# Buttons
${remove_button}    //article[1]//button[contains(@class,'cart-item__remove-button')]
