*** Settings ***
Library  SeleniumLibrary
Resource  ../Resources/PO/Common.robot

*** Variables ***


*** Test Cases ***
Should be able to search for product
    [Tags]  search
    open browser  http:/www.amazon.com  ff
    sleep  3s
    input text  id=twotabsearchtextbox  ferrari 458
    sleep  3s
    click button  css=.nav-search-submit input[type='submit']
    wait until element contains
    sleep  3s
    close browser
