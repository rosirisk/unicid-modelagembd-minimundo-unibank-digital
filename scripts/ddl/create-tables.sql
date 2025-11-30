-- ============================
-- Entidade: Cliente
-- ============================
CREATE TABLE cliente (
    cpf VARCHAR(11) PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
	matricula VARCHAR(20)NOT NULL,
    data_nascimento DATE NOT NULL,
    rg VARCHAR(12) NOT NULL,
    estado_civil VARCHAR(14) NOT NULL,
    endereco VARCHAR(200) NOT NULL,
    telefone VARCHAR(14) NOT NULL,
    email VARCHAR(150) NOT NULL,
    renda_mensal NUMERIC(8,2)
);

-- ============================
-- Entidade: Conta Universitária
-- ============================
CREATE TABLE conta_universitaria (
    numero_conta SERIAL PRIMARY KEY,
    cpf_cliente VARCHAR(11) NOT NULL,
    saldo_disponivel NUMERIC(12,2) DEFAULT 0,
    saldo_bloqueado NUMERIC(12,2) DEFAULT 0,
    status VARCHAR(20) NOT NULL,
    CONSTRAINT fk_cliente FOREIGN KEY (cpf_cliente) REFERENCES cliente(cpf)
);

-- ============================
-- Entidade: Cartão de Crédito Universitário
-- ============================
CREATE TABLE cartao_credito_universitario (
    numero_cartao VARCHAR(16) PRIMARY KEY,
    numero_conta INT NOT NULL,
    limite NUMERIC(12,2) NOT NULL,
    data_validade DATE NOT NULL,
    CONSTRAINT fk_conta FOREIGN KEY (numero_conta) REFERENCES conta_universitaria(numero_conta)
);

-- ============================
-- Entidade: Tipo de Transação
-- ============================
CREATE TABLE tipo_transacao (
    id_tipo SERIAL PRIMARY KEY,
    descricao_transacao VARCHAR(50) NOT NULL
);

-- ============================
-- Entidade: Transação
-- ============================
CREATE TABLE transacao (
    id_transacao SERIAL PRIMARY KEY,
    id_tipo INT NOT NULL,
    numero_conta_origem INT NOT NULL,
    numero_conta_destino INT NOT NULL,
    valor NUMERIC(12,2) NOT NULL,
    data_transacao TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    CONSTRAINT fk_tipo FOREIGN KEY (id_tipo) REFERENCES tipo_transacao(id_tipo),
    CONSTRAINT fk_origem FOREIGN KEY (numero_conta_origem) REFERENCES conta_universitaria(numero_conta),
    CONSTRAINT fk_destino FOREIGN KEY (numero_conta_destino) REFERENCES conta_universitaria(numero_conta)
);
