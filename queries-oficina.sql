-- Quantos carros estão com serviço aguardando autorização?

SELECT ID_Veiculo, placa, valor_servico, ID_Autorizacao
FROM avaliacao
WHERE ID_Avaliacao = 0;

-- Quantos clientes não concluíram serviços?

SELECT COUNT(*) FROM avaliacao
WHERE ID_Avaliacao = 0;

-- Quais clientes gastaram mais de 5.000?

SELECT CONCAT(fnome, ' ', lnome) AS cliente, CPF, valor_servico AS despesa_total
FROM Ordem_de_Servico
INNER JOIN avaliacao ON ID_Avaliacao = ID_Avaliacao
INNER JOIN cliente ON ID_Cliente = ID_Cliente
ORDER BY fnome;

-- Faturamento total dos últimos 10 serviços

SELECT SUM(valor) AS faturamento_total
FROM Ordem_de_Servico
INNER JOIN avaliacao ON ID_Avaliacao = ID_Avaliacao
INNER JOIN cliente ON ID_Cliente = ID_Cliente;

-- Veículo, proprietário, serviço, data de entrada e data de entrega

SELECT marca, modelo, placa, servico, entrada, entrega_prevista
CONCAT (fnome, ' ', lnome) AS cliente, contato, email
FROM veiculo
LEFT JOIN avaliacao ON ID_Veiculo = ID_Veiculo
RIGHT JOIN cliente ON ID_Cliente = ID_Cliente;

-- Serviços realizados para qual cliente, qual veículo, mecânico e observações

SELECT c.fnome AS cliente, CONCAT(marca, ' ', modelo) AS veiculo, lnome, AS mecanico, servico, observacoes
FROM avaliacao
INNER JOIN cliente ON ID_Cliente = ID_Cliente
INNER JOIN mecanico ON ID_Mecanico = ID_Mecanico
INNER JOIN Ordem_de_Servico ON ID_OrdemDeServico = ID_Avaliacao
INNER JOIN veiculo ON ID_Veiculo = ID_Veiculo;