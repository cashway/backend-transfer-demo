# Backend Transfer Demo

## Descrição

Aplicação Rails API de transferências internas.

## Atores

- **User**: Usuário do sistema que possui uma conta e realiza transferências;  
- **Account**: A conta registra o saldo que o usuário possui no sistema;
- **Order**: Representação de uma transação realizada entre dois usuário;

## Requisitos

### Usuário
 - Deve possuir nome;
 - Deve conseguir criar sessão no sistema por email e senha;
 - Pode realizar tranferências para outros usuários;
 - Deve possuir uma conta;

### Conta
 - Deve pertencer a um usuário;
 - Deve possuir saldo;
 - Saldo da conta deve ser igual ou superior a R$ 0,00;

## Ordem
 - Deve ser realizada por um usuário pagador;
 - Deve ser enviada para um usuário favorecido;
 - Usuário pagador deve possuir em saldo em conta do mesmo valor ou superior ao valor da transferência;
