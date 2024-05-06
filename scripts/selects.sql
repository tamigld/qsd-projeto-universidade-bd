-- PESSOAS

SELECT * FROM pessoas;

 	--> CONTATOS
 	
	SELECT p.nome "nome_pessoa",c.telefone
	FROM pessoas p 
		LEFT JOIN pessoas_contatos pc ON pc.matricula_pessoa = p.matricula
		LEFT JOIN contatos c ON pc.id_contato = c.id_contato
	ORDER BY nome;

	--> ENDEREÇOS

	SELECT p.nome "nome_pessoa", e.*
	FROM pessoas p 
		LEFT JOIN pessoas_enderecos pe ON pe.matricula_pessoa = p.matricula 
		LEFT JOIN enderecos e ON e.id = pe.id_endereco  
	ORDER BY nome;


-- CONTRATADOS

SELECT * FROM contratados;

	--> PROFESSORES E FUNCIONARIOS
		
		SELECT p2.nome "nome_contratado", c.salario, c.data_inicio, p.matricula, p.formacao "formação/função", ua.nome "unidade_academica"
		FROM professores p 
			LEFT JOIN pessoas p2 
				ON p2.matricula = p.matricula
			LEFT JOIN contratados c 
				ON p.matricula = c.matricula
			LEFT JOIN unidade_academica ua 
				ON c.cod_unidade_academica = ua.cod
			UNION 
		SELECT p2.nome, c.salario, c.data_inicio, f.matricula, f.funcao, ua.nome
		FROM funcionarios f 
			LEFT JOIN pessoas p2 
				ON p2.matricula = f.matricula
			LEFT JOIN contratados c 
				ON f.matricula = c.matricula
			LEFT JOIN unidade_academica ua 
				ON c.cod_unidade_academica = ua.cod
		ORDER BY unidade_academica;
		

-- DEPENDENTES

SELECT * FROM dependentes;

SELECT d.nome "nome_dependente", d.parentesco, p.nome "nome_contratado"
FROM dependentes d 
	LEFT JOIN contratados c 
		ON d.matricula_contratado = c.matricula
	LEFT JOIN pessoas p 
		ON c.matricula = p.matricula;

	
-- PROFESSORES

SELECT p.*, p2.nome "nome_professor", ua.nome
FROM professores p 
	LEFT JOIN pessoas p2 
		ON p.matricula = p2.matricula
	LEFT JOIN contratados c 
		ON p.matricula = c.matricula
	LEFT JOIN unidade_academica ua 
		ON c.cod_unidade_academica = ua.cod;
	
	
-- ALUNOS
	
SELECT a.mensalidade, p.*
FROM alunos a
	LEFT JOIN pessoas p 
		ON a.matricula = p.matricula;
	
	--> ALUNOS E TURMAS
	
	SELECT * FROM alunos_turmas at2 ;
	
	SELECT a.matricula, p.nome "nome_aluno", t.nome "nome_turma", at2.semestre
	FROM alunos a 
		LEFT JOIN pessoas p 
			ON p.matricula = a.matricula
		LEFT JOIN alunos_turmas at2 
			ON a.matricula = at2.matricula_aluno
		LEFT JOIN turmas t
			ON t.id_turma = at2.id_turma
	ORDER BY t.nome;
	
-- TURMAS
	
	--> TURMA, DISCPLINAS E PROFESSOR
	
		SELECT t.id_turma, t.nome "turma", d.nome "disciplina", p2.nome "nome_professor"
		FROM turmas t
			LEFT JOIN professores p 
				ON t.id_professor = p.matricula
			LEFT JOIN contratados c 
				ON c.matricula = p.matricula
			LEFT JOIN pessoas p2 
				ON c.matricula = p2.matricula
			LEFT JOIN turmas_disciplinas td
				ON td.id_turma = t.id_turma
			LEFT JOIN disciplinas d 
				ON d.codcred = td.cod_disciplina;