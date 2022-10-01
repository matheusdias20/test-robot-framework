*** Settings ***
Documentation    Dashboard Page

Library    Browser




*** Keywords ***
User Logged In 
    ${text}    Set Variable    Aquela figurinha incrível a um clique de distância.
    Get Text                   .header-content strong    equal    ${text}   

Search User
    [Arguments]    ${target}
    Fill Text      input[placeholder^=Busque]    ${target}
    Click          button >> text=Buscar


Select Sticker
    [Arguments]    ${name}
    Click          xpath=//img[@alt="${name}"]/..

Whatsapp Redirect
    Click          button >> text=Entrar em contato


Whatsapp Sticker Message
    [Arguments]    ${sticker_name}

    ${expected_message}    Set Variable    Oi, achei o seu contato no Trade Sticker. Estou interessado(a) na figurinha do ${sticker_name}, bora negociar?

    Switch Page    NEW

    Wait For Elements State    p >> text=${expected_message}    visible    5000