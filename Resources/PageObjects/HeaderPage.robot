*** Settings ***
Library  SeleniumLibrary


*** Variables ***


*** Keywords ***
Input Search Text and Click Search
     Input Text  xpath://*[@id="twotabsearchtextbox"]  mobile phones
     Press Keys  xpath://*[@id="nav-search-submit-button"]  RETURN


Click on Climate Pledge Friendly
    Click Element    xpath://*[@id="p_n_cpf_eligible/21512497011"]/span/a/div/label/i