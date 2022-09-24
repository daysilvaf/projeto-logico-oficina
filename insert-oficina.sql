-- Insert na Tabela Oficina

INSERT INTO oficina (cnpj, razao_social, endereco, contato)
VALUES ('22450687000108', 'Oficina Mastery Seven', 'Avenida Paulista, 1811 - São Paulo - SP', '1125305921');

SELECT * FROM oficina;

-- Insert na Tabela Cliente

INSERT INTO cliente (fnome, lnome, cpf, telefone, email, endereco)
VALUES ('Gael', 'Marchiori', '71781942862', '11995382307', 'gaelm19@outlook.com', 'Avenida Paulista, 2200 - São Paulo - SP'),
('Ayla', 'Belucci', '27123316800', '11972735555', 'aybelucci@gmail.com', 'Avenida Paulista, 2027 - São Paulo - SP'),
('Dominic', 'Savelli', '81986001830', '11982886778', 'domisalli@hotmail.com', 'Rua 13 de Maio, 590 - São Paulo - SP'),
('Zoe', 'Zucchinelli', '86889633806', '11987289337', 'zucchinellizoe@gmail.com', 'Rua Apinajés, 597 - Pompeia, São Paulo - SP'),
('Raul', 'Tondello', '93277527832', '11988442450', 'raultondello50@outlook.com', 'R. Fidalga, 531 - Pinheiros, São Paulo - SP'),
('Aurora', 'Muniz', '74772041869', '11984973578', 'munizaurora26@hotmail.com', 'Avenida Pacaembu, 5320 - Barra Funda, São Paulo - SP'),
('Henry', 'Faccin', '30644437804', '11986689243', 'facchenry333@outlook.com.br', 'Rua Emica Noguti Seo, s/n - Cidade intercap, São Paulo - SP'),
('Yuri', 'Meneghin', '06665433722', '21993586280', 'meneghiny@gmail.com', 'R. dos Arcos, s/n - Centro, Rio de Janeiro - RJ'),
('Sophie', 'Pessanha', '55607163750', '21972314334', 'sophipess@hotmail.com', 'R. Álvaro Ramos, 270 - Botafogo, Rio de Janeiro - RJ'),
('Lucca', 'Rangel', '07274166697', '31997537116', 'rangl21@outlook.com.br', 'R. Maj. Lopes, 719 - São Pedro, Belo Horizonte - MG'),
('Anastacia', 'Lorenzi', '68392661680', '31980228342', 'lorenzianas@gmail.com', 'Av. Teresa Cristina, 295 - Prado, Belo Horizonte - MG'),
('Enzo', 'Vasconselos', '97623126601', '31980714544', 'vasconenzo@hotmail.com', 'Av. Teresa Cristina, 12892 - Belo Horizonte - MG');

SELECT * FROM cliente;

-- Insert na Tabela Veículo

INSERT INTO veiculo (placa, marca, modelo, servico)
VALUES ('RIO2A18', 'Honda', 'CRV', 'Funilaria'),
('EKY1B40', 'Hyundai', 'IX35', 'Restauração do motor'),
('RTE5A76', 'Chevrolet', 'Astra', 'Restauração de interior'),
('LSN4I49', 'Bayerische Motoren Werke AG', 'BMW X3', 'Pintura'),
('QPB8H62', 'Honda', 'HRV', 'Sistma de som'),
('ERJ8C30', 'Land Rover', 'Range Rover Velar', 'Polimento'),
('QTP5F71', 'Chevrolet', 'Corsa', 'Tapeçaria'),
('CXZ7B41', 'Fiat', 'Palio', 'Customização'),
('OTM2X22', 'Wolksvagen', 'Fusca', 'Novos frisos cromados'),
('QRM7E33', 'Hyundai', 'HB20', 'Direção elétrica'),
('RCX9B13', 'Audi AG', 'Audi Q5', 'Motor'),
('PLR3D97', 'Renault', 'Sandero', 'Customização');

-- Insert na Tabela Mecânico

INSERT INTO mecanico (fnome, lnome, telefone, especialidade)
VALUES ('Abel', 'Gutierrez', '11981958261', 'Acessórios'), 
('Kayn', 'Greco', '11987682041', 'Customização'),
('Giuliano', 'Bellini', '11971314660', 'Elétrica'),
('Yann', 'Sartori', '11969727183', 'Funilaria'),
('Pietro', 'Campana', '11991011894', 'Mecânica'),
('Noah', 'Moreau', '11969865384', 'Pintura'),
('Alex', 'Cornell', '11998243453', 'Tapeçaria');

-- Insert na Tabela Peças

INSERT INTO pecas (peca, descricao, custo)
VALUES ('Transmissão', 'Componente do motor', '2694'),
('Motor', 'Motor completo', '15000'),
('Suspensão', 'Jogo completo', '1450'),
('Freios', 'Jogo completo', '950'),
('Cabeçote', 'Componente do motor', '4500'),
('Bloco do motor', 'Componente do motor', '2000'),
('Vela', 'Componente do motor', '400'),
('Ar condicionado', 'Interior', '2500'),
('Valvula', 'Componente do motor', '600'),
('Pistão', 'Componente do motor', '450'),
('Tanque', 'Célula de combustível', '1350'),
('Bateria', 'Alimentação do motor', '620'),
('Parachoque', 'Item de segurança', '441'),
('Radiador', 'Sistema de refrigeração', '1500'),
('Bomba de injeção', 'Injeção de combustível', '337'),
('Bancos', 'Interior', '4500'),
('Kit multimídia', 'Componentes eletrônicos' '4000'),
('Painel', 'Peças originais de reposição', '1200'),
('Rodas', 'Componentes personalizados (Jogos)', '3700'),
('Pneus', 'Componentes de performance', '2760'),
('Disco de freios', 'Componentes esportivos', '1700'),
('Pinças', 'Componentes esportivos', '1600'),
('Frisos', 'Jogo completo cromado', '2200'),
('Amortecedores', 'Componente de suspensão', '522'),
('Escapamento', 'Sistema de exaustão', '1500'),
('Tinta', 'Produto para pintura final', '2530'),
('Primer', 'Produto para impermeabilização pré-pintura', '1200'),
('Coletores', 'Sistema de exaustão', '1210'),
('Direção elétrica', 'Sistema de direção', '5460');

-- Insert na Tabela Serviços

INSERT INTO servicos (servico, descricao, valor_servico)
VALUES('Acessórios', 'Instalação de eletrônicos', '420'),
('Customização', 'Personalização de interiores e/ou exteriores', '5450'),
('Elétrica', 'Manutenção e/ou melhorias', '940'),
('Funilaria', 'Manutenção e/ou melhorias', '4500'),
('Mecânica', 'Manutenção e/ou melhorias', '1450'),
('Pintura', 'Pintura completa, polimento, manutenção', '1300'),
('Tapeçaria', 'Manutenção e/ou criação de interiores', '5020');

-- Insert na Tabela Avaliação

INSERT INTO avaliacao (ID_Cliente, ID_Mecanico, ID_Veiculo, ID_Servicos, placa, avaliacao, autorizacao, entrada, entrega_prevista)
VALUES (1, 4, 1, 1, 'RIO2A18', 'Veículo receberá serviço de funilaria completo', '1', '2022-07-02', '2022-09-01'),
(2, 5, 2, 2, 'EKY1B40', 'Restauração do motor', '1', '2022-08-10', '2022-11-03'),
(3, 6, 3, 3, 'RTE5A76', 'Restauração do interior', '1', '2022-07-01', '2022-09-04'),
(4, 1, 4, 4, 'LSN4I49', 'Pintura', '1', '2022-09-01', '2022-09-07'),
(5, 3, 5, 5, 'Novo sistema de multimídia', '1', '2022-08-26', '2022-09-02'),
(6, 6, 6, 6, 'ERJ8C30', 'Polimento na pintura', '1', '2022-08-25', '2022-09-11'),
(7, 7, 7, 7, 'QTP5F71', 'Tapeçaria personalizada', '1', '2022-08-19', '2022-09-25'),
(8, 2, 8, 8, 'CXZ7B41', 'Customização', '1',  '2022-06-01', '2022-09-03'),
(9, 1, 9, 9, 'OTM2X22', 'Frisos cromados', '1', '2022-09-01', '2022-09-07'),
(10, 3, 10, 10, 'QRM7E33', 'Direção elétrica', '1', '2022-08-18', '2022-09-01'),
(11, 5, 11, 11, 'RCX9B13', 'Restauração do motor', '1', '2022-08-10', '2022-11-03'), 
(12, 2, 12, 12, 'PLR3D97', 'Customização', '1', '2022-08-10', '2022-11-03');

-- Insert na Tabela Ordem de Serviço

INSERT INTO ordem_de_servico (ID_Avaliacao, valor, pagamento, observacoes)
VALUES(1, 5300, 1, 'Funilaria completa. Veículo entregue no prazo'),
(2, 4400, 1, 'Motor restaurado. Veículo entregue no prazo'),
(3, 6450, 1, 'Restauração do interior concluída. Veículo pronto para entrega'),
(4, 0, 0, 'Veículo em processo de preparação para pintura'),
(5, 2300, 1, 'Novo sistema multimídia instalado e testado. Veículo entregue no prazo'),
(6, 3500, 0, 'Veículo em processo para preparação para polimento'),
(7, 4000, 1, 'Removida a tapeçaria antiga. Iniciado o processo de limpeza'),
(8, 2355, 1, 'Customização em 90%'),
(9, 2180, 1, 'Veículo em processo de remoção dos frisos antigos'),
(10, 6450, 1, 'Direção elétrica instalada. Veículo entregue no prazo'),
(11, 4800, 0, 'Restauração do motor completa. Esperando o dono do veículo vir retirar'),
(12, 4000, 1, 'Customização concluída. Retoques finais');