-- cliente + conta + cartão 
SELECT 
c.cpf,
c.nome,
c.matricula,
c.data_nascimento,
c.renda_mensal,
cc.numero_conta,
cc.status,
cc.saldo_disponivel,
cc.saldo_bloqueado,
ccu.numero_cartao,
ccu.limite,
ccu.data_validade
FROM cliente c
LEFT JOIN conta_universitaria cc ON c.cpf = cc.cpf_cliente 
LEFT JOIN cartao_credito_universitario ccu ON cc.numero_conta = ccu.numero_conta;

--- extrato de transacoes
SELECT t.id_transacao, 
tt.descricao_transacao,
t.numero_conta_origem,
t.numero_conta_destino,
t.valor,
t.data_transacao
FROM transacao t 
LEFT JOIN tipo_transacao tt on t.id_tipo= tt.id_tipo 

