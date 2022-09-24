-- Criação do Banco de Dados para cenário de Oficina

CREATE DATABASE oficina;
USE oficina;

-- Criação da Tabela Oficina

CREATE TABLE oficina(
ID_Oficina INT AUTO_INCREMENT PRIMARY KEY,
CNPJ BIGINT(14) NOT NULL,
razao_social VARCHAR(255) NOT NULL,
endereco VARCHAR(50) NOT NULL,
contato BIGINT(11) NOT NULL
);

-- Criação da Tabela Cliente

CREATE TABLE cliente(
ID_Cliente INT AUTO_INCREMENT PRIMARY KEY,
fnome VARCHAR(30) NOT NULL,
lnome VARCHAR(45) NOT NULL,
CPF BIGINT(11),
CNPJ BIGINT(14), 
contato BIGINT(11) NOT NULL,
email VARCHAR(50),
endereco VARCHAR(50) NOT NULL
);

-- Criação da Tabela Veículo

CREATE TABLE veiculo(
ID_Veiculo INT AUTO_INCREMENT PRIMARY KEY,
placa CHAR(8) NOT NULL,
marca VARCHAR(30),
modelo VARCHAR(20),
servico TEXT NOT NULL
);

-- Criação da Tabela Mecânico 

CREATE TABLE mecanico(
ID_Mecanico INT AUTO_INCREMENT PRIMARY KEY,
fnome VARCHAR(30) NOT NULL,
lnome VARCHAR(45) NOT NULL,
telefone BIGINT(11) NOT NULL,
especialidade ENUM('Pintura', 'Funilaria', 'Mecânica', 'Elétrica', 'Customização', 'Tapeçaria', 'Acessórios')
);

-- Criação da Tabela Peças

CREATE TABLE pecas(
ID_Pecas INT AUTO_INCREMENT PRIMARY KEY,
peca VARCHAR(30),
descricao TEXT,
custo DECIMAL
);

-- Criação da Tabela Serviços

CREATE TABLE servicos(
ID_Servicos INT AUTO_INCREMENT PRIMARY KEY,
servico ENUM('Pintura', 'Funilaria', 'Mecânica', 'Elétrica', 'Customização', 'Tapeçaria', 'Acessórios'),
descricao TEXT,
valor_servico DECIMAL
);

-- Criação da Tabela Avaliação

CREATE TABLE avaliacao(
ID_Avaliacao INT AUTO_INCREMENT PRIMARY KEY,
ID_Oficina INT NOT NULL,
ID_Cliente INT NOT NULL,
ID_Veiculo INT NOT NULL,
ID_Mecanico INT NOT NULL,
ID_Pecas INT NOT NULL,
ID_Servicos INT NOT NULL,
placa CHAR(8) NOT NULL,
autorizacao BOOLEAN DEFAULT 0,
entrada DATE,
entrega_prevista DATE,
PRIMARY KEY (ID_Avaliacao, ID_Oficina, ID_Cliente, ID_Veiculo, ID_Mecanico, ID_Pecas, ID_Servicos)
);

-- Criação da Tabela Ordem de Serviço

CREATE TABLE Ordem_de_Servico
ID_OrdemDeServico INT AUTO_INCREMENT PRIMARY KEY,
ID_Avaliacao INT NOT NULL,
valor DECIMAL,
pagamento BOOLEAN DEFAULT 0,
observacoes TEXT
);

-- Alteração nas Tabelas

ALTER TABLE Ordem_de_Servico ADD CONSTRAINT FOREIGN KEY (fk_pecas_ID_Pecas) REFERENCES pecas (ID_Pecas)
ALTER TABLE Ordem_de_Servico ADD CONSTRAINT FOREIGN KEY (fk_servicos_ID_Servicos) REFERENCES servicos (ID_Servicos)
ALTER TABLE avaliacao ADD CONSTRAINT FOREIGN KEY (fk_Ordem_de_Servico_ID_OrdemDeServico) REFERENCES Ordem_de_Servico (ID_OrdemDeServico)
ALTER TABLE avaliacao ADD CONSTRAINT FOREIGN KEY (fk_Ordem_de_Servico_ID_Avaliacao) REFERENCES Ordem_De_Servico (ID_Avaliacao)
ALTER TABLE cliente ADD CONSTRAINT FOREIGN KEY (fk_veiculo_ID_Veiculo) REFERENCES veiculo (ID_Veiculo)
ALTER TABLE veiculo ADD CONSTRAINT FOREIGN KEY (fk_Avaliacao_ID_Avaliacao) REFERENCES avaliacao (ID_Avaliacao)
ALTER TABLE veiculo ADD CONSTRAINT FOREIGN KEY (fk_Avaliacao_ID_Oficina) REFERENCES avaliacao (ID_Avaliacao)
ALTER TABLE veiculo ADD CONSTRAINT FOREIGN KEY (fk_Avaliacao_ID_Cliente) REFERENCES avaliacao (ID_Cliente)
ALTER TABLE veiculo ADD CONSTRAINT FOREIGN KEY (fk_Avaliacao_ID_Veiculo) REFERENCES avaliacao (ID_Veiculo)
ALTER TABLE veiculo ADD CONSTRAINT FOREIGN KEY (fk_Avaliacao_ID_Mecanico) REFERENCES avaliacao (ID_Mecanico)
ALTER TABLE veiculo ADD CONSTRAINT FOREIGN KEY (fk_Avaliacao_ID_Pecas) REFERENCES avaliacao (ID_Pecas)
ALTER TABLE veiculo ADD CONSTRAINT FOREIGN KEY (fk_Avaliacao_ID_Servicos) REFERENCES avaliacao (ID_Servicos)
ALTER TABLE mecanico ADD CONSTRAINT FOREIGN KEY (fk_Avaliacao_ID_Avaliacao) REFERENCES avaliacao (ID_Avaliacao)
ALTER TABLE mecanico ADD CONSTRAINT FOREIGN KEY (fk_Avaliacao_ID_Oficina) REFERENCES avaliacao (ID_Oficina)
ALTER TABLE mecanico ADD CONSTRAINT FOREIGN KEY (fk_Avaliacao_ID_Cliente) REFERENCES avaliacao (ID_Cliente)
ALTER TABLE mecanico ADD CONSTRAINT FOREIGN KEY (fk_Avaliacao_ID_Veiculo) REFERENCES avaliacao (ID_Veiculo)
ALTER TABLE mecanico ADD CONSTRAINT FOREIGN KEY (fk_Avaliacao_ID_Pecas) REFERENCES avaliacao (ID_Pecas)
ALTER TABLE mecanico ADD CONSTRAINT FOREIGN KEY (fk_Avaliacao_ID_Servicos) REFERENCES avaliacao (ID_Servicos)
ALTER TABLE oficina ADD CONSTRAINT FOREIGN KEY (fk_Avaliacao_ID_Avaliacao) REFERENCES avaliacao (ID_Avaliacao)
ALTER TABLE oficina ADD CONSTRAINT FOREIGN KEY (fk_Avaliacao_ID_Oficina) REFERENCES avaliacao (ID_Oficina)
ALTER TABLE oficina ADD CONSTRAINT FOREIGN KEY (fk_Avaliacao_ID_Cliente) REFERENCES avaliacao (ID_Cliente)
ALTER TABLE oficina ADD CONSTRAINT FOREIGN KEY (fk_Avaliacao_ID_Veiculo) REFERENCES avaliacao (ID_Veiculo)
ALTER TABLE oficina ADD CONSTRAINT FOREIGN KEY (fk_Avaliacao_ID_Mecanico) REFERENCES avaliacao (ID_Mecanico)
ALTER TABLE oficina ADD CONSTRAINT FOREIGN KEY (fk_Avaliacao_ID_Pecas) REFERENCES avaliacao (ID_Pecas)
ALTER TABLE oficina ADD CONSTRAINT FOREIGN KEY (fk_Avaliacao_ID_Servicos) REFERENCES avaliacao (ID_Servicos)