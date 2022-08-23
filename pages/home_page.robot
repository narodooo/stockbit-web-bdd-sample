*** Settings ***
Library                             SeleniumLibrary

*** Variables ***
${homeStockbitLogo}     //*[@id="header-logo"]/a/img
${homeSearchBar}        //*[@id="header-search"]/div/div[2]/input
${profileIcon}          //*[@id="header-right"]/div[2]/span[1]/a/i/img

*** Keywords ***
User directed to home page
    wait until element is visible   ${homeStockbitLogo}     10
    element should be visible       ${homeSearchBar}
    wait until element is visible   ${homeSearchBar}        10
    element should be visible       ${homeSearchBar}
    wait until element is visible   ${profileIcon}        10
    element should be visible       ${profileIcon}