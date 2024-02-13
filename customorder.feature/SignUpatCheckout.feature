#language: pt
Funcionalidade: Tela de cadastro - Checkout

    Como cliente da EBAC-SHOP
    Quero fazer concluir meu cadastro
    Para finalizar minha compra


    Esquema de Cenário:

        Dado que eu acesse a página de checkout
        Quando eu inserir os dados marcados como obrigatórios: <pais>, <endereco>, <cidade>, <CEP>, <Telefone>, <email> e clicar no botão "Finalizar Compra"
        Então deve ser exibida uma <menssagem>

            | pais     | endereco       | cidade     | CEP      | Telefone  | email              | menssagem                             |
            | "Brasil" | "Rua Valida 1" | "Brasília" | 00000001 | 379996745 | validmail@EBAC.com | null                                  |
            | "Brasil" | null           | "Brasília" | 00000001 | 379996745 | validmail@EBAC.com | "Campos obrigatórios não preenchidos" |
            | "Brasil" | null           | "Brasília" | 00000001 | 379996745 | validmailAEBAC.com | "Erro: email inválido"                |
