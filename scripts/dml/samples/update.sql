UPDATE public.cliente
SET nome='Maria Silva e Silva', estado_civil='CASADA'
WHERE cpf='12345678901';

UPDATE public.cliente
SET endereco='Rua das Flores, 321 - Bela Vista, São Paulo - SP', telefone='11987651234', email='maria.silva.silva@email.com'
WHERE cpf='12345678901';

UPDATE public.cliente
SET renda_mensal=2000
WHERE cpf='12345678901';

-- update limite
UPDATE public.cartao_credito_universitario
SET limite=3000
WHERE numero_conta=1;