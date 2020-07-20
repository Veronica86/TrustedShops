*** Settings ***


*** Keywords ***
user is not logged in
    Log  Check to see whether user is logged in

user searches for products
    LandingPage.Load
    TopNav.Search for Products

search results contain relevant products
    SearchResults.Verify Search Completed

user selects a product from search result
    SearchResults.Click Product link
    Product.Verify Page Loaded

correct product page loads
    Product.Verify Page Loaded

user adds the product to the cart
    Product.Add to Cart


