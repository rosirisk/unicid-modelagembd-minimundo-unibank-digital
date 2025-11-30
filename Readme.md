# UniBank Digital: 

Trata-se de uma atividade desenvolvida na disciplina de Modelagem de Banco de Dados que tem como proposta a criação de um minimundo, sendo esta a conclusão das experiências práticas da atividade. O UniBank Digital é um sistema voltado para a gestão bancária exclusivo para universitários, que disponibiliza uma conta digital única e personalizada. Oferece para o público-alvo (estudantes universitários) serviços financeiros básicos, como depósitos, transferências, pagamentos e Pix, além de acesso a um cartão de crédito com regras específicas de limite. A intenção é simular a operação de um banco digital acadêmico (coerente às regras realistas), integrando funcionalidades modernas e regras de negócio adaptadas ao contexto universitário. 

📌 Para que serve: 

 É um sistema acadêmico que simula a operação de um banco digital exclusivo para universitários. Ele oferece serviços financeiros básicos como: 

Depósitos Transferências Pagamentos Pix Cartão de crédito com regras específicas de limite 

O intuito é proporcionar uma experiência prática e realista de gestão bancária, integrando funcionalidades modernas e regras de negócio adaptadas ao contexto universitário. 

🗄️ Estrutura do Banco de Dados: 

O sistema foi modelado e implementado em PostgreSQL utilizando o pgAdmin. As principais entidades são: Cliente: dados pessoais e acadêmicos dos estudantes; Conta Universitária: saldo disponível, saldo bloqueado e status da conta; Cartão de Crédito Universitário: número do cartão, limite e validade (atributos adicionados a partir da sugestão do professor(a)); Tipo de Transação: classificação das operações (depósito, saque, transferência, pagamento, Pix); Transação: registro das movimentações financeiras entre contas. 

🔄 ️ Método utilizado 

Aplicando normalização até a 3ª Forma Normal (3NF). 

Utilizando comandos SQL (DDL e DML) para criação e manipulação de dados. 

Definindo regras de negócio: uma conta por cliente, cartão opcional, transações classificadas. 

 

📐 Normalização no UniBank Digital: 

A normalização garante que o banco de dados esteja bem estruturado, sem redundâncias e com integridade dos dados. No UniBank Digital, o modelo segue até a Terceira Forma Normal (3NF). Abaixo, cada forma normal é explicada com exemplos diretos das entidades do sistema. 

Primeira Forma Normal (1NF)  

Definição: Todos os atributos devem ser atômicos (sem listas ou múltiplos valores em uma mesma célula). 

Aplicação no UniBank Digital: 

Na tabela Cliente, o campo telefone armazena apenas um número por registro. 

Se um aluno tiver mais de um telefone, isso deve ser tratado em outra tabela ou em registros separados, nunca em uma única célula. 

Exemplo: 

cpf = 12345678901 | telefone = 11987654321 

Não existe telefone = "11987654321, 11888888888". 

Segunda Forma Normal (2NF)  

Definição: O banco já está em 1NF e todos os atributos não-chave dependem totalmente da chave primária. 

Aplicação no UniBank Digital: 

Na tabela Conta Universitária, atributos como saldo_disponivel e status dependem diretamente da chave primária numero_conta. 

Não há dependência parcial, pois todas as chaves primárias são simples (não compostas). 

Exemplo: 

numero_conta = 1 | saldo_disponivel = 1500.00 | status = Ativa 

O saldo e o status só existem porque a conta existe, e dependem totalmente da chave primária. 

Terceira Forma Normal (3NF)  

Definição: O banco já está em 2NF e não existem dependências transitivas entre atributos não-chave. 

Aplicação no UniBank Digital: 

Na tabela Cartão de Crédito Universitário, atributos como limite e data_validade dependem apenas da chave primária numero_cartao. 

Na tabela Cliente, o endereco depende apenas do cpf e não de outro atributo como estado_civil. 

Exemplo: 

numero_cartao = 4111111111111111 | limite = 2000.00 | validade = 2028-12-31 

O limite e a validade não dependem de outro atributo não-chave, apenas da chave primária. 

 

📄 Documentação  

Ferramentas utilizadas: 

PostgreSQL (SGBD - Sistema de Gerenciamento de Banco de Dados)  

pgAdmin (interface gráfica para administração e execução dos scripts) 

Scripts desenvolvidos: 

INSERT: povoamento das tabelas principais com dados simulados. 

SELECT: consultas variadas (filtros, ordenações, junções). 

UPDATE: alterações de registros com condições. 

DELETE: remoções de registros com condições. 

Comandos Utilizados: 

Durante a implementação foram aplicados os principais comandos SQL (Structured Query Language): 

DDL (Data Definition Language) 

CREATE TABLE → criação das entidades cliente, conta_universitaria, cartao_credito_universitario, transacao, tipo_transacao. 

 

DML (Data Manipulation Language) 

INSERT INTO → inserção de registros (clientes, contas, cartões, transações). 

SELECT → consultas com filtros (WHERE), ordenação (ORDER BY), limites (LIMIT) e junções (JOIN) 

UPDATE → atualização de registros (nome, estado civil, endereço, telefone, e-mail, renda, limite do cartão) 

DELETE → exclusão de registro: cliente (a deleção só pode ser realizada no caso da entrada(digitação) de dados do cliente errôneo, caso  contrário não poderá ser feita), neste caso deverá ser enviada para uma outra entidade clientes_inativos, que não é tratada neste projeto, possivelmente sendo um tópico para desenvolvimento futuro. 

WHERE → serve para filtrar registros de acordo com uma condição.  

ORDER BY → organiza os resultados de uma consulta. 

ASC / DESC → ordem crescente ou decrescente 

LIMIT → define quantos registros serão exibidos. No exemplo, apenas os 5 primeiros clientes cadastrados são retornados. 

JOIN → junções entre tabelas para consultas relacionais 

🎯 Objetivo da Atividade: 

 Simular a operação de um banco digital acadêmico. Aplicar conceitos de modelagem lógica e normalização (1NF, 2NF, 3NF). Demonstrar domínio dos comandos SQL básicos e intermediários. Criar um ambiente realista para prática de consultas, inserções, atualizações e exclusões. 

✅ O que faz? 

Permite depósitos, transferências, pagamentos e Pix. 

Gera e gerencia contas universitárias. 

Oferece cartão de crédito com regras específicas. 

Registra e consulta transações financeiras. 

❌ O que não faz? 

Não oferece serviços avançados (investimentos, múltiplas contas por cliente). 

Não possui interface gráfica para usuário final. 

Não simula cenários complexos de mercado financeiro. 

🌟 Boas práticas aplicadas 

Uso de normalização (1NF, 2NF, 3NF) para evitar redundâncias. 

Definição clara de chaves primárias e estrangeiras. 

Scripts organizados e comentados. 

Regras de negócio bem definidas (uma conta por cliente, cartão opcional). 

Testes de consistência para validar operações. 

🧩 Conclusão:  

O desafio inicial foi representar de forma realista a operação de um banco digital voltado para universitários. A limitação de apenas uma conta por cliente e a oferta de serviços básicos simplificaram o modelo, mas também reduziram a flexibilidade frente a cenários mais complexos. 

No processo de desenvolvimento e modelagem, foram definidas regras essenciais: cada cliente deve possuir apenas uma conta vinculada ao CPF, o cartão de crédito é opcional e todas as transações seguem um tipo previamente estabelecido. O modelo foi implementado em PostgreSQL, com aplicação da normalização até a 3NF e utilização de comandos SQL para manipulação dos dados. 

Dessa forma, o UniBank Digital alcançou seu objetivo de integrar teoria e prática em um modelo consistente. As entidades foram projetadas para evitar redundâncias, os testes confirmaram a integridade das operações e o minimundo representa com clareza a gestão bancária acadêmica em um ambiente digital. 

 

 

 

 

 

 

 

 

 

 

 

 