# Backend Transfer Demo

## Descrição

Aplicação Rails API de transferências internas.

## Atores

- **User**: Usuário do correntista que possui uma conta e realiza transferências;  
- **Account**: A conta registra o saldo que o usuário possui no sistema;
- **Order**: Representação de uma transação realizada entre dois usuário;

## Requisitos

#### Usuário
 - Deve possuir nome;
 - Deve conseguir criar sessão no sistema por email e senha;
 - Pode realizar tranferências para outros usuários;
 - Deve possuir uma conta;
 - Pode realizar consulta de saldo;
 - Pode realizar consulta de transações;
 - Usuário deve estar logado para acessar informações da conta;
 - Usuário deve estar logado para acessar informações das transações;
 - Usuário deve estar logado para realizar transações;

#### Conta
 - Deve pertencer a um usuário;
 - Deve possuir saldo;
 - Saldo da conta deve ser igual ou superior a R$ 0,00;
 - Deve possuir um número de indentificação;

#### Ordem
 - Deve ser realizada por um usuário pagador;
 - Deve ser enviada para um usuário favorecido;
 - Usuário pagador deve possuir em saldo em conta do mesmo valor ou superior ao valor da transferência;
 - Deve armazenar o número da conta do favorecido do pagamento;
 - Ao realizar a transferência, o saldo da conta do usuário pagador deve ser debitado o valor da transferência;
 - Ao realizar a transferência, o saldo da conta do usuário recebedor deve ser creditado com o valor da transferência;
