Feature: Finalizar compra

    Como cliente da EBAC-SHOP
Quero fazer concluir meu cadastro   
Para finalizar minha compra

Background: Página de checkout
Given acesso a página de "checkout" para finalizar a compra

Scenario: Todos os dados obrigatórios preenchidos
When preencho o Nome
And preencho o Sobrenome
And seleciono o País
And preencho o Endereço
And preencho a Cidade
And preencho o CEP
And preencho o Telefone
And preencho email válido
Then sou redirecionado para a página de pagamento

Scenario: Campo obrigatório vazio
When deixo um campo obrigatório vazio
Then exibe alerta "Por favor preencha os campos obrigatórios (*)."

Scenario: Email inválido
When preencho o campo com email inválido
Then exibe alerta "Por favor insira um Email válido. "