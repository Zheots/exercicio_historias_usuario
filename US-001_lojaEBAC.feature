Feature: Configurar produto

    Como cliente da EBAC-SHOP
    Quero configurar meu produto de acordo com meu tamanho e gosto
    E escolher a quantidade
    Para depois inserir no carrinho

    Background:
        Given Acesso a página de configuração do produto

    Scenario: Configurar e adicionar um produto ao carrinho
        When eu seleciono uma cor
        And eu seleciono um tamanho
        And eu escolho uma quantidade
        And eu clico no botão "Adicionar ao carrinho"
        Then o produto deve ser adicionado ao carrinho

    Scenario: Verificar a obrigatoriedade de seleções
        When eu tento adicionar o produto ao carrinho sem selecionar cor, tamanho ou quantidade
        Then eu devo ver uma mensagem de erro "Po favor selecione a cor, tamanho e quantidade"

    Scenario: Limitação de quantidade de produtos
        When eu tento adicionar mais de 10 itens ao varrinho
        Then eu devo ver uma mensagem de erro informando que a quantidade máxima permitida é 10

    Scenario: Limpar seleções e retornar ao estado original
        When eu clico no botão "Limpar"
        Then todas as seleções devem ser removidas
        And retorna o estado da página ao original