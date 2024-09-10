Feature: Login na plataforma

    Como cliente da EBAC-SHOP
    Quero fazer o login (autenticação) na plataforma
    Para visualizar meus pedidos

    Background: Tela de login
        Given acesso a página de login

    Scenario: Autênticação bem sucedida
        When eu digito o <usuario>
        And eu digito a <senha>
        Then sou redirecionado à tela de "checkout"

        Examples:
            | usuario             | senha       |
            | "joao@ebac.com.br"  | "senha@123" |
            | "maria@ebac.com.br" | "senha@123" |
            | "jose@ebac.com.br"  | "senha@123" |



    Scenario: Autênticação falha
        When eu digito um usuário ou senha incorreto
        Then deve exibir uma mensagem de alerta “Usuário ou senha inválidos”