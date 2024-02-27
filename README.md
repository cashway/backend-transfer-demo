# Backend Transfer Demo

## Descrição

Aplicação Rails API de transferências internas.

## Atores

- **User**: Usuário do sistema que possui uma conta e realiza transferências;  
- **Account**: A conta registra o saldo que o usuário possui no sistema;
- **Order**: Representação de uma transação realizada entre dois usuário;

## Requisitos
- Uma rota para login utilizando;
- Uma rota para criar uma ordem;
- Uma rota para consulta do saldo;
- Uma rota consulta das ordens;

## Restrições
- Usuário:  nome, email e senha são obrigatórios;
- Conta: número obrigatório, obrigatório pertencer a um usuário;
- Ordem: valor deve ser maior que zero, conta do pagador é obrigatória, conta do recebedor é obrigratória e deve  pertencer ao usuário que inicio a transação. 
