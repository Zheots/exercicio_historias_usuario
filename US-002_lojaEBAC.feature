#language: pt

Funcionalidade: Login na plataforma

    Como cliente da EBAC-SHOP
    Quero fazer o login (autenticação) na plataforma
    Para visualizar meus pedidos

    Contexto: Tela de login
        Dado que eu acesso a página de login

    Cenario: Autênticação bem sucedida
        Quando eu digito o <usuario> e <senha> corretos
        Entao sou redirecionado à tela de "checkout"

        Examples:
            | usuario             | senha       |
            | "joao@ebac.com.br"  | "senha@123" |
            | "maria@ebac.com.br" | "senha@123" |
            | "jose@ebac.com.br"  | "senha@123" |



    Cenario: Autênticação falha
        Quando eu digito um usuário ou senha incorreto
        Entao deve exibir uma mensagem de alerta “Usuário ou senha inválidos”