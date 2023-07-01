DROP TABLE IF EXISTS clientes;

CREATE TABLE clientes (
	idCliente INT GENERATED ALWAYS AS IDENTITY,
	nome VARCHAR(50),
	telefone VARCHAR(12),
	endeco VARCHAR(100),	
	PRIMARY KEY(idCliente)
);

INSERT INTO clientes(nome, telefone, endereco) 
VALUES 
('Vinicius Silva', '987654', 'Rua Girassol'), 
('Maria Antonia', '123456', 'Rua Rosas'),
('Marcus Vinicius', '654123', 'Rua Itajai'); 

SELECT * FROM clientes;

SELECT * FROM clientes WHERE idCliente = 3;

SELECT * FROM clientes WHERE nome LIKE '%Vinicius%';

UPDATE clientes SET endereco = 'Rua Limão' WHERE nome LIKE '%Marcus Vinicius%';

DELETE FROM clientes WHERE idCliente = 2;

SELECT * FROM clientes;