-- OBSERVAÇÕES: 
--      Data no formato MM/DD/YYYY, mesmo usando TO_DATE('06/08/2000','DD/MM/YYYY').
--      O tipo "number" em CPF ignora zeros a esquerda.
--      Não é possível inserir a carga horária 100, pois o tamanho de number(3,1) não permite. Soluções: colocar 99.9 ou alterar para number(4,1)


---------- Criando Tabelas ----------

create table cursos (
    curso number(2),
    nome varchar2(50) not null unique,
    constraint pk_cursos_curso primary key (curso)
);

create table alunos (
    aluno number(5),
    nome varchar2(50) not null,
    nascimento date not null,
    cpf number(11) not null unique,
    celular number(11),
    nome_mae varchar2(50) not null,
    nome_pai varchar2(50),
    sexo char(1)
    constraint pk_alunos_aluno primary key (aluno)
);

create table docentes (
    docente number(5),
    nome varchar2(50) not null,
    cpf number(11) unique,
    constraint pk_docentes_docente primary key (docente)
);

create table alunos_cursos (
    aluno number(5),
    curso number(2),
    status char(1),
    constraint pk_alunoscursos_aluno primary key (aluno, curso),
    constraint fk_alunoscursos_aluno foreign key (aluno) references alunos (aluno),
    constraint fk_alunoscursos_curso foreign key (curso) references cursos (curso),
    constraint ck_alunoscursos_status check (status in ('A', 'R', 'C'))
);

create table componentes (
    componente number(3),
    nome varchar2(30) unique not null,
    preco number(5,2),
    carga_horaria number(3,1) not null,
    docente number(5),
    constraint pk_componentes_componente primary key (componente),
    constraint fk_componentes_docente foreign key (docente) references docentes (docente)
);


create table matriculas (
    matricula number(6),
    cadastro date not null,
    componente number(3),
    aluno number(5),
    curso number(2),
    pontuacao number(5,2),
    constraint pk_matriculas_matricula primary key (matricula),
    constraint fk_matriculas_componente foreign key (componente) references componentes (componente),
    constraint fk_matriculas_aluno foreign key (aluno) references alunos (aluno),
    constraint fk_matriculas_curso foreign key (curso) references cursos (curso)
);


---------- 2) Na tabela ALUNOS, inserir 3 registros do sexo feminino e 2 do sexo masculino. ----------

BEGIN
    insert into alunos (aluno, nome, nascimento, cpf, celular, nome_mae, nome_pai, sexo)
    values (1, 'Franco Mansur Giani', TO_DATE('06/08/2000','DD/MM/YYYY'), 07233730601, 34991459049, 'Ieda Mansur Giani', 'Max Antonio Alves Giani', 'M');

    insert into alunos (aluno, nome, nascimento, cpf, celular, nome_mae, nome_pai, sexo)
    values (2, 'Lucas Silva', TO_DATE('15/03/2000','DD/MM/YYYY'), 08235684936, 34995493926, 'Maria Silva', 'Oswaldo Silva', 'M');

    insert into alunos (aluno, nome, nascimento, cpf, celular, nome_mae, nome_pai, sexo)
    values (3, 'Giovanna Castro', TO_DATE('20/06/2002','DD/MM/YYYY'), 93844729594, 34993854783, 'Claudia Castro', 'Daniel Castro', 'F');

    insert into alunos (aluno, nome, nascimento, cpf, celular, nome_mae, nome_pai, sexo)
    values (4, 'Jéssica Oliveira', TO_DATE('27/09/2003','DD/MM/YYYY'), 009233748901, 34991843782, 'Renata Oliveira', 'Pedro Oliveira', 'F');

    insert into alunos (aluno, nome, nascimento, cpf, celular, nome_mae, nome_pai, sexo)
    values (5, 'Beatriz dos Santos', TO_DATE('05/03/2001','DD/MM/YYYY'), 09477394827, 34997805748, 'Letícia dos Santos', 'Daniel dos Santos', 'F');
 END;
 /


---------- 3) Na tabela DOCENTES, adicione os professores Humberto, Luciano e André. ----------

BEGIN
    insert into docentes (docente, nome, cpf)
    values (1, 'Humberto', 10000000001);

    insert into docentes (docente, nome, cpf)
    values (2, 'Luciano', 20000000002);

    insert into docentes (docente, nome, cpf)
    values (3, 'André', 30000000003);
 END;
 /


---------- 4) Atribuindo os componentes a cada professor. ----------

BEGIN
    insert into componentes (componente, nome, preco, carga_horaria, docente)
    values (1, 'Banco de Dados', 100.00, 40, 1);

    insert into componentes (componente, nome, preco, carga_horaria, docente)
    values (2, 'Processamento de Imagens', 60.00, 20, 1);

    insert into componentes (componente, nome, preco, carga_horaria, docente)
    values (3, 'Administração para Empresas', 250.00, 80, 1);

    insert into componentes (componente, nome, preco, carga_horaria, docente)
    values (4, 'Algoritmo', 200.00, 20, 2);

    insert into componentes (componente, nome, preco, carga_horaria, docente)
    values (5, 'Segurança', 80.00, 30, 2);

    insert into componentes (componente, nome, preco, carga_horaria, docente)
    values (6, 'Redes', 250.00, 80, 2);

    insert into componentes (componente, nome, preco, carga_horaria, docente)
    values (7, 'Gestão de Negócios', 450.00, 99.9, 2);

    insert into componentes (componente, nome, preco, carga_horaria, docente)
    values (8, 'Estrutura de Dados', 60.00, 20, 3);

    insert into componentes (componente, nome, preco, carga_horaria, docente)
    values (9, 'Programação em Python', 150.00, 60, 3);

    insert into componentes (componente, nome, preco, carga_horaria, docente)
    values (10, 'Cálculo I', 100.00, 40, 3);
 END;
 /


---------- 5) Cadastre dois cursos, Sistemas de informação e Administração. ----------

BEGIN
    insert into cursos (curso, nome)
    values (1, 'Sistemas de informação');

    insert into cursos (curso, nome)
    values (2, 'Administração');
 END;
 /


---------- 6/7/8) Cadastre dois alunos no curso de Sistemas de informação e 3 alunos no curso de Administração, todos alunos estão com status cursando. ---------- 

BEGIN
    INSERT INTO matriculas (matricula, cadastro, componente, aluno, curso, pontuacao)
    VALUES (1, DATE '2025-01-15', 1, 1, 1, 100.00);

    INSERT INTO matriculas (matricula, cadastro, componente, aluno, curso, pontuacao)
    VALUES (2, DATE '2025-01-15', 5, 1, 1, 95.50);

    INSERT INTO matriculas (matricula, cadastro, componente, aluno, curso, pontuacao)
    VALUES (3, DATE '2025-01-15', 8, 1, 1, 94.80);

    INSERT INTO matriculas (matricula, cadastro, componente, aluno, curso, pontuacao)
    VALUES (4, DATE '2025-01-15', 6, 2, 1, 87.00);

    INSERT INTO matriculas (matricula, cadastro, componente, aluno, curso, pontuacao)
    VALUES (5, DATE '2025-01-15', 1, 2, 1, 88.50);

    INSERT INTO matriculas (matricula, cadastro, componente, aluno, curso, pontuacao)
    VALUES (6, DATE '2025-01-15', 9, 2, 1, 92.80);

    INSERT INTO matriculas (matricula, cadastro, componente, aluno, curso, pontuacao)
    VALUES (7, DATE '2025-01-15', 7, 3, 2, 92.80);

    INSERT INTO matriculas (matricula, cadastro, componente, aluno, curso, pontuacao)
    VALUES (8, DATE '2025-01-15', 10, 3, 2, 94);

    INSERT INTO matriculas (matricula, cadastro, componente, aluno, curso, pontuacao)
    VALUES (9, DATE '2025-01-15', 3, 3, 2, 90.80);

    INSERT INTO matriculas (matricula, cadastro, componente, aluno, curso, pontuacao)
    VALUES (10, DATE '2025-01-15', 7, 4, 2, 80.80);

    INSERT INTO matriculas (matricula, cadastro, componente, aluno, curso, pontuacao)
    VALUES (11, DATE '2025-01-15', 10, 4, 2, 74.20);

    INSERT INTO matriculas (matricula, cadastro, componente, aluno, curso, pontuacao)
    VALUES (12, DATE '2025-01-15', 3, 4, 2, 75);

    INSERT INTO matriculas (matricula, cadastro, componente, aluno, curso, pontuacao)
    VALUES (13, DATE '2025-01-15', 7, 5, 2, 79);

    INSERT INTO matriculas (matricula, cadastro, componente, aluno, curso, pontuacao)
    VALUES (14, DATE '2025-01-15', 10, 5, 2, 64);

    INSERT INTO matriculas (matricula, cadastro, componente, aluno, curso, pontuacao)
    VALUES (15, DATE '2025-01-15', 3, 5, 2, 82);
END;
/

BEGIN
    INSERT INTO alunos_cursos (aluno, curso, status)
    VALUES (1, 1, 'C');

    INSERT INTO alunos_cursos (aluno, curso, status)
    VALUES (2, 1, 'C');

    INSERT INTO alunos_cursos (aluno, curso, status)
    VALUES (3, 2, 'C');

    INSERT INTO alunos_cursos (aluno, curso, status)
    VALUES (4, 2, 'C');

    INSERT INTO alunos_cursos (aluno, curso, status)
    VALUES (5, 2, 'C');
END;
/


---------- 9) Altere o valor do componente Processamento de imagens para 40 horas. ---------- 

