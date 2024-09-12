#language: pt

Funcionalidade: Configurar produto

    Como cliente da EBAC-SHOP
    Quero configurar meu produto de acordo com meu tamanho e gosto
    E escolher a quantidade
    Para depois inserir no carrinho

    Contexto:
        Dado qu acesso a página de configuração do produto

    Cenario: Configurar e adicionar um produto ao carrinho
        Quando eu seleciono <cor> <tamanho> e <quantidade>
        Entao o produto deve ser adicionado ao carrinho

    Cenario: Verificar a obrigatoriedade de seleções
        Quando eu tento adicionar o produto ao carrinho sem selecionar <cor>, <tamanho> ou <quantidade>
        Entao eu devo ver uma mensagem de erro "Por favor selecione a cor, tamanho e quantidade"

    Cenario: Limitação de quantidade de produtos
        Quando eu tento adicionar mais de 10 itens ao varrinho
        Entao eu devo ver uma mensagem de erro informando que a quantidade máxima permitida é 10

    Cenario: Limpar seleções e retornar ao estado original
        Quando eu clico no botão "Limpar"
        Entao todas as seleções devem ser removidas e retorna o estado da página ao original