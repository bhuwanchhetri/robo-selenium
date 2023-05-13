*** Settings ***
Library  SeleniumLibrary

*** Keywords ***
Verify Search Results
     Input Text  xpath://*[@id="twotabsearchtextbox"]  mobile phones
     Press Keys  xpath://*[@id="nav-search-submit-button"]  RETURN
     Page Should Contain  results for "mobile phones"

Sort results by condition
    Mouse Over  xpath://span[@class='a-dropdown-label']
    Click Element  xpath://span[@class='a-dropdown-label']
    Sleep  3s
    Mouse Down  id:s-result-sort-select_4

    Click Element  id:s-result-sort-select_4
    Sleep   5s


Verify filter results
    Page Should Contain  Sort by:Newest Arrivals