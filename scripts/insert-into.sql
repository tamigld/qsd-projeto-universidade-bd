-- INSERT EM PESSOAS

INSERT INTO pessoas
(nome, email, cpf)
VALUES
('Ana Silva', 'ana.silva@univ.edu', '123.456.789-01'),
('Bruno Santos', 'bruno.santos@univ.edu', '234.567.890-12'),
('Carlos Oliveira', 'carlos.oliveira@univ.edu', '345.678.901-23'),
('Daniela Costa', 'daniela.costa@univ.edu', '456.789.012-34'),
('Eduardo Nunes', 'eduardo.nunes@univ.edu', '567.890.123-45'),
('Fernanda Lima', 'fernanda.lima@univ.edu', '678.901.234-56'),
('Gabriel Martins', 'gabriel.martins@univ.edu', '789.012.345-67'),
('Helena Barbosa', 'helena.barbosa@univ.edu', '890.123.456-78'),
('Igor Mendes', 'igor.mendes@univ.edu', '901.234.567-89'),
('Juliana Rocha', 'juliana.rocha@univ.edu', '012.345.678-90'),
('Lucas Almeida', 'lucas.almeida@univ.edu', '123.456.789-10'),
('Mariana Castro', 'mariana.castro@univ.edu', '234.567.890-11'),
('Nicolas Pereira', 'nicolas.pereira@univ.edu', '345.678.901-12'),
('Patrícia Gomes', 'patricia.gomes@univ.edu', '456.789.012-13'),
('Rafael Fernandes', 'rafael.fernandes@univ.edu', '567.890.123-14'),
('Thamires Galdino', 'thami.galves@outlook.com', '236.152.148-16');

INSERT INTO contatos
(telefone)
VALUES
('11987654321'),
('11987654322'),
('11987654323'),
('11987654324'),
('11987654325'),
('11987654326'),
('11987654327'),
('11987654328'),
('11987654329'),
('11987654330'),
('11987654331'),
('11987654332'),
('11987654333'),
('11987654334'),
('11987654335'),
('11987654359'),  -- Duplicado para Ana Silva
('11987654415'),  -- Duplicado para Bruno Santos
('11987654478'),  -- Duplicado para Carlos Oliveira
('11934974659');  

INSERT INTO pessoas_contatos 
(matricula_pessoa, id_contato)
VALUES
(1000, 1),
(1001, 2),
(1002, 3),
(1003, 4),
(1004, 5),
(1005, 6),
(1006, 7),
(1007, 8),
(1008, 9),
(1009, 10),
(1010, 11),
(1011, 12),
(1012, 13),
(1013, 14),
(1014, 15),
(1000, 16),
(1001, 17),
(1002, 18),
(1015, 19);

INSERT INTO enderecos 
(logradouro, bairro, cidade, sg_estado, cep)
VALUES
('Rua das Flores, 123', 'Centro', 'São Paulo', 'SP', '01234-567'),
('Avenida Paulista, 987', 'Bela Vista', 'São Paulo', 'SP', '01311-000'),
('Rua Augusta, 456', 'Consolação', 'São Paulo', 'SP', '01305-000'),
('Rua XV de Novembro, 321', 'Centro', 'Curitiba', 'PR', '80010-010'),
('Avenida Batel, 654', 'Batel', 'Curitiba', 'PR', '80250-070'),
('Rua Marechal Floriano, 789', 'Centro', 'Curitiba', 'PR', '80010-110'),
('Rua da Consolação, 159', 'Consolação', 'São Paulo', 'SP', '01302-000'),
('Avenida Brasil, 753', 'Jardim Botânico', 'Curitiba', 'PR', '80240-010'),
('Avenida Independência, 321', 'Independência', 'Porto Alegre', 'RS', '90035-073'),
('Rua da Praia, 147', 'Centro', 'Porto Alegre', 'RS', '90010-150'),
('Avenida Borges de Medeiros, 654', 'Centro', 'Porto Alegre', 'RS', '90020-021'),
('Avenida Atlântica, 543', 'Copacabana', 'Rio de Janeiro', 'RJ', '22021-000'),
('Rua Barata Ribeiro, 123', 'Copacabana', 'Rio de Janeiro', 'RJ', '22040-001'),
('Avenida Presidente Vargas, 654', 'Centro', 'Rio de Janeiro', 'RJ', '20071-001'),
('Rua 24 de Outubro, 321', 'Jardim Europa', 'São Paulo', 'SP', '05410-000'),
('Avenida Beira-Mar, 321', 'Beira Mar', 'Fortaleza', 'CE', '60060-010'),
('Avenida Silas Munguba, 654', 'Bonsucesso', 'Fortaleza', 'CE', '60741-000'),
('Rua José Lourenço, 987', 'Aldeota', 'Fortaleza', 'CE', '60170-001'),
('Avenida das Palmeiras, 321', 'Jardim das Flores', 'Belo Horizonte', 'MG', '30130-001');

INSERT INTO pessoas_enderecos 
(matricula_pessoa, id_endereco)
VALUES
(1000, 1),
(1001, 2),
(1002, 3),
(1003, 4),
(1004, 5),
(1005, 6),
(1006, 7),
(1007, 8),
(1008, 9),
(1009, 10),
(1010, 11),
(1011, 12),
(1012, 13),
(1013, 14),
(1013, 15),
(1014, 16),
(1014, 17),
(1014, 18),
(1015, 19);

-- INSERT INTO: SEÇÃO ALUNOS

INSERT INTO alunos 
(matricula, mensalidade)
VALUES
(1007, 1200.00),
(1008, 1300.00),
(1009, 1400.00),
(1010, 1350.00),
(1011, 1250.00),
(1012, 1450.00),
(1013, 1150.00),
(1014, 1100.00),
(1015, 1500.00);

INSERT INTO alunos_turmas 
(matricula_aluno, id_turma, semestre)
VALUES
(1007, 1, 1),
(1008, 2, 2),
(1009, 3, 3),
(1010, 4, 4),
(1011, 1, 5),
(1012, 2, 6),
(1013, 3, 7),
(1014, 4, 8),
(1015, 1, 2),
(1007, 2, 1),
(1015, 3, 2);
 
-- INSERT INTO: TURMAS E DISCIPLINAS

INSERT INTO turmas 
(nome, id_professor)
VALUES
('Turma de Matemática Aplicada', 1001),
('Laboratório de Física Experimental', 1002),
('Turma de Química Orgânica Avançada', 1005),
('Oficina de Literatura Contemporânea', 1006);

INSERT INTO disciplinas 
(codcred, nome)
VALUES
(101, 'Cálculo Diferencial e Integral I'),
(102, 'Física para Engenharia I'),
(103, 'Química Geral'),
(104, 'Literatura Brasileira Moderna'),
(105, 'Álgebra Linear'),
(106, 'Mecânica Clássica'),
(107, 'Química Orgânica Avançada'),
(108, 'Introdução à Literatura Inglesa'),
(109, 'Estatística Descritiva'),
(110, 'Fenômenos de Transporte'),
(111, 'Lógica Matemática'),
(112, 'Termodinâmica Aplicada');

INSERT INTO turmas_disciplinas 
(horario, cod_disciplina, id_turma)
VALUES
-- Turma 1
('Segunda-feira - 08:00', 101, 1),
('Quarta-feira - 10:00', 102, 1),
('Sexta-feira - 08:00', 105, 1),
('Terça-feira - 14:00', 109, 1),
-- Turma 2
('Segunda-feira - 10:00', 103, 2),
('Terça-feira - 08:00', 104, 2),
('Quinta-feira - 08:00', 106, 2),
('Sexta-feira - 10:00', 111, 2),
-- Turma 3
('Segunda-feira - 14:00', 107, 3),
('Quarta-feira - 14:00', 108, 3),
('Quinta-feira - 10:00', 110, 3),
('Sexta-feira - 14:00', 112, 3),
-- Turma 4
('Terça-feira - 10:00', 101, 4),
('Quinta-feira - 14:00', 102, 4),
('Quarta-feira - 08:00', 105, 4),
('Sexta-feira - 08:00', 109, 4);

-- INSERT INTO : SEÇÃO DE CONTRATADOS

INSERT INTO unidade_academica 
(cod, nome)
VALUES
(1, 'Faculdade de Ciências Exatas'),
(2, 'Faculdade de Ciências Humanas');


INSERT INTO contratados 
(matricula, salario, data_inicio, cod_unidade_academica)
VALUES
(1000, 3500.00, '2023-01-15', 1),
(1001, 4200.50, '2022-08-01', 2),
(1002, 3900.75, '2021-05-10', 1),
(1003, 4500.00, '2023-03-01', 2),
(1004, 3600.25, '2022-11-20', 1),
(1005, 3800.00, '2022-07-15', 2),
(1006, 4300.75, '2023-01-10', 1),
(1007, 4000.00, '2021-09-20', 2);

INSERT INTO dependentes 
(nome, parentesco, matricula_contratado)
VALUES
('Beatriz Santos', 'Filha', 1000),
('Carlos Santos', 'Filho', 1000),
('Luana Oliveira', 'Esposa', 1001),
('Lucas Mendes', 'Filho', 1002),
('Alice Gomes', 'Filha', 1003),
('Felipe Nunes', 'Esposo', 1004),
('Juliana Pereira', 'Filha', 1005),
('Rafael Barbosa', 'Filho', 1006),
('Marcela Dias', 'Filha', 1007),
('Gabriela Santos', 'Filha', 1007);

-- FUNCIONARIOS E PROFESSORES

INSERT INTO funcionarios 
(matricula, funcao)
VALUES
(1000, 'Técnico Administrativo'),
(1003, 'Assistente Administrativo'),
(1004, 'Analista de TI'),
(1007, 'Auxiliar de Serviços Gerais');

INSERT INTO professores 
(matricula, formacao)
VALUES
(1001, 'Doutorado em Matemática'),
(1002, 'Mestrado em Física'),
(1005, 'Doutorado em Química'),
(1006, 'Doutorado em Letras');