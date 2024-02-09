Feature: Configure Product and amount

    Como cliente da EBAC-SHOP
    Quero configurar meu produto de acordo com meu tamanho e gosto
    E escolher a quantidade
    Para depois inserir no carrinho

    Background:
        Given Eu acesse uma página de produto

    Scenario Outline:  Seleções de cor, tamanho e quantidade devem ser obrigatórios

        When eu seleciono <cor>
        And e seleciono <tamanho>
        And e seleciono <quantidade>
        And e clico no botão "Comprar"
        Then deve exibir uma menssagen <menssagem>

            | cor    | tamanho | quantidade | menssagem                                                            |
            | "blue" | "XS"    | 1          | "Itens adicionados ao carrinho"                                      |
            | null   | "XS"    | 1          | "Selecione cor, tamanho e quantidade antes de adicionar ao carrinho" |
            | "blue" | null    | 1          | "Selecione cor, tamanho e quantidade antes de adicionar ao carrinho" |
            | "blue" | "XS"    | 0          | "Selecione cor, tamanho e quantidade antes de adicionar ao carrinho" |


    Scenario Outline: Deve permitir apenas 10 produtos por venda

        Given eu adiciono <produtos> ao <carrinho>
        And <produtos> + <carrinho> > 10
        Then deve <comportamento> os produtos no carrinho, e exibir uma <menssagem>

            | produtos | carrinho | comportamento | menssagem                                       |
            | 1        | 0        | "incluir"     | "Itens adicionados ao carrinho"                 |
            | 1        | 10       | "não incluir" | "O carrinho comporta apenas 10 items por venda" |
            | 10       | 0        | "incluir"     | "itens adicionados ao carrinho"                 |
            | 6        | 5        | "não incluir" | "O carrinho comporta apenas 10 items por venda" |

    Scenario:Quando eu clicar no botão “limpar” deve voltar ao estado original

        Given Opções de Cor e Tamanho, diferentes das iniciais, estejam selecionados
        When Botão "Limpar" for clicado, as Opções de Cor e Tamanho devem voltar as iniciais.