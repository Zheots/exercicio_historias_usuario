#language: pt

Funcionalidade: Finalizar compra

    Como cliente da EBAC-SHOP
    Quero fazer concluir meu cadastro   
    Para finalizar minha compra

Contexto: Página de checkout
Dado que eu acesso a página de "checkout" para finalizar a compra

Cenario: Todos os dados obrigatórios preenchidos
Quando preencho os campos obrigatórios demarcados com "*"
Entao sou redirecionado para a página de pagamento

Cenario: Email inválido
Quando preencho o campo com email inválido
Entao exibe alerta "Por favor insira um Email válido. "

Cenario: Campo obrigatório vazio
Quando deixo um campo obrigatório vazio
Entao exibe alerta "Por favor preencha os campos obrigatórios (*)."

