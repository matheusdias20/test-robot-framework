*** Settings ***
Documentation    Login Tests

Resource    ../resources/main.resource

Test Setup       Start Test
Test Teardown    Finish Test

*** Test Cases ***
Deve logar com sucesso

    Go To Login Page
    Submit Credentials    papito@gmail.com    vaibrasil
    Button Login
    User Logged In 


Não deve logar com senha incorreta
    [Tags]                        inv_pass

    Go To Login Page
    Submit Credentials            papito@gmail.com    abc123
    Button Login
    Toast Message Should Be       Credenciais inválidas, tente novamente!



Deve exibir notificação toaster se a senha não for preenchida  
    Go To Login Page  
    Submit Credentials Only Email    papito@gmail.com
    Button Login
    Toast Message Should Be          Por favor, informe a sua senha secreta!



Deve exibir notificação toaster se o email não for preenchido
    Go To Login Page
    Submit Credentials Only Password    vaibrasil
    Button Login                        
    Toast Message Should Be             Por favor, informe o seu email!


Deve exibir notificação toaster se email e senha não forem preenchidos
    Go To Login Page
    Button Login
    Toast Message Should Be    Por favor, informe suas credenciais!         






