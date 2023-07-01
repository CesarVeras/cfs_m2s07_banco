DROP TABLE IF EXISTS cargos CASCADE;
DROP TABLE IF EXISTS enderecos CASCADE;
DROP TABLE IF EXISTS clientes CASCADE;

CREATE TABLE cargos (
	idCargo INT GENERATED ALWAYS AS IDENTITY,
	cargo VARCHAR(50),
	PRIMARY KEY(idCargo)
);

CREATE TABLE clientes (
	idCliente INT GENERATED ALWAYS AS IDENTITY,
	nome VARCHAR(50),
	idCargo INT, 
	PRIMARY KEY(idCliente),
	CONSTRAINT fk_cargo FOREIGN KEY(idCargo) REFERENCES cargos(idCargo) ON DELETE CASCADE
);

CREATE TABLE telefones (
	idCliente INT,
	telefone VARCHAR(12),
	PRIMARY KEY(idCliente),
	CONSTRAINT fk_cliente FOREIGN KEY(idCliente) REFERENCES clientes(idCliente)	ON DELETE CASCADE
);

CREATE TABLE enderecos (
	idCliente INT,
	endereco VARCHAR(100),
	PRIMARY KEY(idCliente),
	CONSTRAINT fk_cliente FOREIGN KEY(idCliente) REFERENCES clientes(idCliente)	ON DELETE CASCADE
);
