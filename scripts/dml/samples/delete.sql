DELETE FROM public.transacao
WHERE numero_conta_origem=15  
OR numero_conta_destino = 15;

DELETE 
FROM public.cartao_credito_universitario
WHERE numero_conta = 15;

DELETE 
FROM public.conta_universitaria
WHERE numero_conta = 15;

DELETE 
FROM public.cliente
WHERE cpf = '15234567895'

-- delete somente para remoção de dados incorretos no sistema. 
-- Para demais condições devera ser feita a deleção logica no banco ou movida para uma base de inativos.