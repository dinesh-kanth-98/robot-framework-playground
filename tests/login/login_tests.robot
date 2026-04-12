*** Settings ***
Library    SeleniumLibrary

*** Variables ***


*** Test Cases ***
Login Test
    Open Browser    https://www.saucedemo.com/    edge    options=add_experimental_option("detach", True)
    Wait Until Element Is Visible    id:user-name    10s
#    Set Selenium Speed    1s
    Input Text    id:user-name    standard_user
    Input Text    id:password    secret_sauce
    Click Element    xpath://*[@id="login-button"]
