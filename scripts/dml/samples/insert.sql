INSERT INTO cliente (cpf, nome, matricula, data_nascimento, rg, estado_civil, endereco, telefone, email, renda_mensal)
VALUES
('12345678901', 'Maria Silva', 'MA20250001', '2000-05-15', '123456789', 'Solteira', 'Rua das Flores, 123 - Bela Vista, São Paulo - SP', '11987654321', 'maria.silva@email.com', 2500.00),
('23456789012', 'João Pereira', 'MA20250002', '1999-03-20', '234567890', 'Casado', 'Av. Brasil, 456 - Pinheiros, São Paulo - SP', '11987654322', 'joao.pereira@email.com', 3200.00),
('34567890123', 'Ana Costa', 'MA20250003', '2001-07-10', '345678901', 'Solteira', 'Rua das Palmeiras, 789 - Moema, São Paulo - SP', '11987654323', 'ana.costa@email.com', 1800.00),
('45678901234', 'Carlos Souza', 'MA20250004', '1998-12-01', '456789012', 'Divorciado', 'Rua das Acácias, 321 - Vila Mariana, São Paulo - SP', '11987654324', 'carlos.souza@email.com', 4000.00),
('56789012345', 'Fernanda Lima', 'MA20250005', '2002-02-25', '567890123', 'Solteira', 'Av. Paulista, 1000 - Consolação, São Paulo - SP', '11987654325', 'fernanda.lima@email.com', 2200.00),
('67890123456', 'Pedro Santos', 'MA20250006', '2000-09-15', '678901234', 'Casado', 'Rua das Oliveiras, 555 - Perdizes, São Paulo - SP', '11987654326', 'pedro.santos@email.com', 3500.00),
('78901234567', 'Juliana Alves', 'MA20250007', '2001-11-30', '789012345', 'Solteira', 'Rua das Hortênsias, 77 - Tatuapé, São Paulo - SP', '11987654327', 'juliana.alves@email.com', 1700.00),
('89012345678', 'Ricardo Gomes', 'MA20250008', '1999-05-05', '890123456', 'Separado', 'Av. Independência, 88 - Santana, São Paulo - SP', '11987654328', 'ricardo.gomes@email.com', 3100.00),
('90123456789', 'Patrícia Rocha', 'MA20250009', '2000-08-18', '901234567', 'Uniao Estavel', 'Rua das Orquídeas, 99 - Liberdade, São Paulo - SP', '11987654329', 'patricia.rocha@email.com', 2400.00),
('01234567890', 'Lucas Fernandes', 'MA20250010', '2002-04-12', '012345678', 'Solteiro', 'Rua das Magnólias, 12 - Itaim Bibi, São Paulo - SP', '11987654330', 'lucas.fernandes@email.com', 1800.00),
('11234567891', 'Mariana Oliveira', 'MA20250011', '2001-01-22', '112345678', 'Solteira', 'Av. Central, 200 - Vila Madalena, São Paulo - SP', '11987654331', 'mariana.oliveira@email.com', 2600.00),
('12234567892', 'Gabriel Martins', 'MA20250012', '1998-06-14', '122345678', 'Casado', 'Rua das Rosas, 300 - Brooklin, São Paulo - SP', '11987654332', 'gabriel.martins@email.com', 3300.00),
('13234567893', 'Camila Ribeiro', 'MA20250013', '2000-10-09', '132345678', 'Solteira', 'Av. das Américas, 400 - Barra Funda, São Paulo - SP', '11987654333', 'camila.ribeiro@email.com', 2100.00),
('14234567894', 'Felipe Araújo', 'MA20250014', '1999-12-25', '142345678', 'Uniao Estavel', 'Rua das Palmeiras, 500 - Saúde, São Paulo - SP', '11987654334', 'felipe.araujo@email.com', 2900.00),
('15234567895', 'Beatriz Mendes', 'MA20250015', '2001-03-03', '152345678', 'Solteira', 'Av. das Nações, 600 - Lapa, São Paulo - SP', '11987654335', 'beatriz.mendes@email.com', 1500.00);


INSERT INTO cartao_credito_universitario (numero_cartao, numero_conta, limite, data_validade)
VALUES
('4111111111111111', 1, 2000.00, '2028-12-31'),
('4222222222222222', 2, 1500.00, '2028-12-31'),
('4333333333333333', 3, 1000.00, '2028-12-31'),
('4444444444444444', 4, 2500.00, '2028-12-31'),
('4555555555555555', 5, 1200.00, '2028-12-31'),
('4666666666666666', 6, 1800.00, '2028-12-31'),
('4777777777777777', 7, 2200.00, '2028-12-31'),
('4888888888888888', 8, 1600.00, '2028-12-31'),
('4999999999999999', 9, 1400.00, '2028-12-31'),
('4000000000000000', 10, 2000.00, '2028-12-31'),
('4011111111111111', 11, 1700.00, '2028-12-31'),
('4022222222222222', 12, 2300.00, '2028-12-31'),
('4033333333333333', 13, 900.00, '2028-12-31'),
('4044444444444444', 14, 2100.00, '2028-12-31'),
('4055555555555555', 15, 2500.00, '2028-12-31');



INSERT INTO conta_universitaria (cpf_cliente, saldo_disponivel, saldo_bloqueado, status)
VALUES
('12345678901', 1500.00, 0.00, 'Ativa'),
('23456789012', 2000.00, 0.00, 'Ativa'),
('34567890123', 500.00, 0.00, 'Ativa'),
('45678901234', 3000.00, 100.00, 'Ativa'),
('56789012345', 1200.00, 0.00, 'Ativa'),
('67890123456', 2500.00, 0.00, 'Ativa'),
('78901234567', 1800.00, 0.00, 'Ativa'),
('89012345678', 2200.00, 0.00, 'Ativa'),
('90123456789', 900.00, 0.00, 'Ativa'),
('01234567890', 2700.00, 0.00, 'Ativa'),
('11234567891', 1600.00, 0.00, 'Ativa'),
('12234567892', 3100.00, 0.00, 'Ativa'),
('13234567893', 800.00, 0.00, 'Ativa'),
('14234567894', 2000.00, 0.00, 'Ativa'),
('15234567895', 1400.00, 0.00, 'Ativa');


INSERT INTO transacao (id_tipo, numero_conta_origem, numero_conta_destino, valor)
VALUES
(3, 1, 2, 200.00),   -- Transferência da conta 1 para a conta 2
(1, 3, 3, 500.00),   -- Depósito na conta 3
(2, 4, 4, 300.00),   -- Saque da conta 4
(4, 5, 5, 150.00);   -- Pagamento na conta 5


INSERT INTO tipo_transacao (descricao_transacao)
VALUES
('Depósito'),
('Saque'),
('Transferência'),
('Pagamento');
