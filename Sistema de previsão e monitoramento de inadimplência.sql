Create database monitoramento_risco;
Use monitoramento_risco;

CREATE TABLE clientes (
    id_cliente INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(100),
    renda_mensal DECIMAL(10,2),
    score_credito INT,
    limite_credito DECIMAL(10,2)
) ENGINE=InnoDB;

CREATE TABLE emprestimos (
    id_emprestimo INT PRIMARY KEY AUTO_INCREMENT,
    id_cliente INT,
    valor_emprestimo DECIMAL(10,2),
    data_concessao DATE,
    CONSTRAINT fk_cliente
        FOREIGN KEY (id_cliente)
        REFERENCES clientes(id_cliente)
) ENGINE=InnoDB;

CREATE TABLE pagamentos (
    id_pagamento INT PRIMARY KEY AUTO_INCREMENT,
    id_emprestimo INT,
    data_pagamento DATE,
    valor_pago DECIMAL(10,2),
    dias_atraso INT,
    CONSTRAINT fk_emprestimo
        FOREIGN KEY (id_emprestimo)
        REFERENCES emprestimos(id_emprestimo)
) ENGINE=InnoDB;

INSERT INTO clientes (nome, renda_mensal, score_credito, limite_credito) VALUES
('Henrique Silva', 5000, 720, 15000),
('Thiago Costa', 3200, 610, 9000),
('Davi Pereira', 2800, 480, 6000),
('Daniela Rocha', 8000, 780, 25000),
('Rodrigo Lima', 4000, 530, 10000);

INSERT INTO emprestimos (id_cliente, valor_emprestimo, data_concessao) VALUES
(1, 8000, CURDATE()),
(2, 6000, CURDATE()),
(3, 5000, CURDATE()),
(4, 20000, CURDATE()),
(5, 7000, CURDATE());









