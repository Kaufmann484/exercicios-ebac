Feature: Login na Plataforma

Como cliente da EBAC-SHOP
Quero fazer o login (autenticação) na plataforma  
Para visualizar meus pedidos

Background:
    Given eu acesse a página de login

Scenario: Ao inserir dados válidos deve ser direcionado para a tela de checkout

    When eu inserir email ou username validos, "joão@ebac.com" ou "joão124"
    And inserir senha valida, "senha1234"
    Then devo ser direcionado para a págian de checkout

Scenario: Ao inserir um dos campos inválidos deve exibir uma mensagem de alerta “Usuário ou senha inválidos”

    When eu inserir email ou username invalidos, "whatever@ebac.com" ou "thisname"
    Or  inserir senha invalida, "password"
    Then deve ser exibida uma menssagem "Usuário ou Senha inválidos"