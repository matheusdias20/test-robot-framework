*** Settings ***
Documentation    Teste de negociação de figurinhas da copa

Resource    ../resources/main.resource

Test Setup       Start Test
Test Teardown    Finish Test

*** Test Cases ***
Deve negociar a figurinha do Neymar Legend

    Do Login

    Search User           legend
    Select Sticker        Neymar Jr
    Whatsapp Redirect
    Whatsapp Sticker Message    Neymar Jr
