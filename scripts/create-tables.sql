CREATE SEQUENCE matricula START 1000;

CREATE TABLE pessoas(
	matricula int DEFAULT nextval('matricula') PRIMARY KEY NOT NULL,
	nome varchar(100),
	email varchar(30) UNIQUE,
	cpf varchar(15) UNIQUE
);

CREATE TABLE pessoas_contatos(
	id_pessoas_contatos serial PRIMARY KEY,
	matricula_pessoa int,
	id_contato int,
	FOREIGN KEY (matricula_pessoa) REFERENCES pessoas(matricula),
	FOREIGN KEY (id_contato) REFERENCES contatos(id_contato)
);

CREATE TABLE contatos(
	id_contato serial PRIMARY KEY,
	telefone varchar(15)
);

CREATE TABLE pessoas_enderecos(
	id_end_cliente serial PRIMARY KEY,
	matricula_pessoa int,
	id_endereco int,
	FOREIGN KEY (matricula_pessoa) REFERENCES pessoas(matricula),
	FOREIGN KEY (id_endereco) REFERENCES enderecos(id)
);

CREATE TABLE enderecos(
	id serial PRIMARY KEY,
	logradouro varchar(100),
	bairro varchar(20),
	sg_estado varchar(2),
	cidade varchar(100),
	cep varchar (15)
);

CREATE TABLE alunos(
	matricula int PRIMARY KEY,
	mensalidade decimal(10, 2),
	FOREIGN KEY (matricula) REFERENCES pessoas(matricula)
);

CREATE TABLE unidade_academica(
	cod int PRIMARY KEY,
	nome varchar(100)
);

CREATE TABLE contratados(
	matricula int PRIMARY KEY,
	salario decimal(10, 2),
	data_inicio date,
	cod_unidade_academica int,
	FOREIGN KEY (matricula) REFERENCES pessoas(matricula),
	FOREIGN KEY (cod_unidade_academica) REFERENCES unidade_academica(cod)
);

CREATE TABLE dependentes(
	id_dependente serial PRIMARY KEY,
	nome varchar(100),
	parentesco varchar(15),
	matricula_contratado int,
	FOREIGN KEY (matricula_contratado) REFERENCES contratados(matricula)
);

CREATE TABLE funcionarios(
	matricula int PRIMARY KEY,
	funcao varchar(50),
	FOREIGN KEY (matricula) REFERENCES contratados(matricula)
);

CREATE TABLE professores(
	matricula int PRIMARY KEY,
	formacao varchar(50),
	FOREIGN KEY (matricula) REFERENCES contratados(matricula)
);

CREATE TABLE turmas(
	id_turma serial PRIMARY KEY,
	nome varchar(100),
	id_professor int,
	FOREIGN KEY (id_professor) REFERENCES professores(matricula)
);

CREATE TABLE alunos_turmas(
    matricula_aluno int,
    id_turma int,
    semestre int,
    PRIMARY KEY (matricula_aluno, id_turma, semestre),
    FOREIGN KEY (matricula_aluno) REFERENCES alunos(matricula),
    FOREIGN KEY (id_turma) REFERENCES turmas(id_turma)
);

CREATE TABLE turmas_disciplinas(
	id_turma_disciplina serial PRIMARY KEY,
	horario varchar(50),
	cod_disciplina int,
	id_turma int,
	FOREIGN KEY (cod_disciplina) REFERENCES disciplinas(codcred),
	FOREIGN KEY (id_turma) REFERENCES turmas(id_turma)
);

CREATE TABLE disciplinas(
	codcred int PRIMARY KEY,
	nome varchar(100)
);  