# language: pt
Funcionalidade: Escolher produto e quantidade

    Como cliente da EBAC-SHOP
    Quero configurar meu produto de acordo com meu tamanho e gosto
    Escolher a quantidade
    Para depois inserir no carrinho

    Contexto:
        Dado Eu acesse uma página de produto

    Esquema de Cenário:  Seleções de cor, tamanho e quantidade devem ser obrigatórios

        Quando eu seleciono <cor>,<tamanho>, <tamanho>,e clico no botão "Comprar"
        Então deve exibir uma menssagen <menssagem>

            | cor    | tamanho | quantidade | menssagem                                                            |
            | "blue" | "XS"    | 1          | "Itens adicionados ao carrinho"                                      |
            | null   | "XS"    | 1          | "Selecione cor, tamanho e quantidade antes de adicionar ao carrinho" |
            | "blue" | null    | 1          | "Selecione cor, tamanho e quantidade antes de adicionar ao carrinho" |
            | "blue" | "XS"    | 0          | "Selecione cor, tamanho e quantidade antes de adicionar ao carrinho" |


    Esquema de Cenário: Deve permitir apenas 10 produtos por venda

        Dado eu adiciono <produtos> ao <carrinho>, mas <produtos> + <carrinho> > 10
        Então deve <comportamento> os produtos no carrinho, e exibir uma <menssagem>

            | produtos | carrinho | comportamento | menssagem                                       |
            | 1        | 0        | "incluir"     | "Itens adicionados ao carrinho"                 |
            | 1        | 10       | "não incluir" | "O carrinho comporta apenas 10 items por venda" |
            | 10       | 0        | "incluir"     | "itens adicionados ao carrinho"                 |
            | 6        | 5        | "não incluir" | "O carrinho comporta apenas 10 items por venda" |

    Cenário:Quando eu clicar no botão “limpar” deve voltar ao estado original

        Dado Opções de Cor e Tamanho, diferentes das iniciais, estejam selecionados
        Quando Botão "Limpar" for clicado, as Opções de Cor e Tamanho devem voltar as iniciais.