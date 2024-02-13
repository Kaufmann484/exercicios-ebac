#language: pt
Funcionalidade: Login na Plataforma

Como cliente da EBAC-SHOP
Quero fazer o login (autenticação) na plataforma  
Para visualizar meus pedidos

Contexto:
    Dado eu acesse a página de login

Cenário: Ao inserir dados válidos deve ser direcionado para a tela de checkout

    Quando eu inserir email ou username validos, "joão@ebac.com" ou "joão124" e inserir senha valida, "senha1234"
    Então devo ser direcionado para a págian de checkout

Cenário: Ao inserir um dos campos inválidos deve exibir uma mensagem de alerta “Usuário ou senha inválidos”

    Quando eu inserir email ou username invalidos, "whatever@ebac.com" ou "thisname" ou inserir senha invalida, "password"
    Então deve ser exibida uma menssagem "Usuário ou Senha inválidos"