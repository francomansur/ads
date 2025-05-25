-- 1) Inserindo 10 registros em OEHR_REGIONS --
BEGIN
    insert into OEHR_REGIONS (REGION_ID, REGION_NAME) values (5,'Oceania');
    insert into OEHR_REGIONS (REGION_ID, REGION_NAME) values (6,'Sudeste Asiático');
    insert into OEHR_REGIONS (REGION_ID, REGION_NAME) values (7,'Ártico');
    insert into OEHR_REGIONS (REGION_ID, REGION_NAME) values (8,'Antártica');
    insert into OEHR_REGIONS (REGION_ID, REGION_NAME) values (9,'Caribe');
    insert into OEHR_REGIONS (REGION_ID, REGION_NAME) values (10,'Europa Oriental');
    insert into OEHR_REGIONS (REGION_ID, REGION_NAME) values (11,'América Central');
    insert into OEHR_REGIONS (REGION_ID, REGION_NAME) values (12,'Norte da África');
    insert into OEHR_REGIONS (REGION_ID, REGION_NAME) values (13,'Subcontinente Indiano');
    insert into OEHR_REGIONS (REGION_ID, REGION_NAME) values (14,'Bálcãs');
END;
/

-- 1) Inserindo 10 registros em OEHR_JOBS --
BEGIN
    insert into OEHR_JOBS (JOB_ID, JOB_TITLE, MIN_SALARY, MAX_SALARY) values ('DS_ENG','Engenheiro de Dados', 5000, 25000);
    insert into OEHR_JOBS (JOB_ID, JOB_TITLE, MIN_SALARY, MAX_SALARY) values ('UX_DES','UX Designer', 2000, 13000);
    insert into OEHR_JOBS (JOB_ID, JOB_TITLE, MIN_SALARY, MAX_SALARY) values ('QA_ENG','Engenheiro de Qualidade', 3000, 10000);
    insert into OEHR_JOBS (JOB_ID, JOB_TITLE, MIN_SALARY, MAX_SALARY) values ('SEC_ANL','Analista Seg. da Inf.', 5000, 25000);
    insert into OEHR_JOBS (JOB_ID, JOB_TITLE, MIN_SALARY, MAX_SALARY) values ('DEV_OPS','Engenheiro DevOps', 6000, 22000);
    insert into OEHR_JOBS (JOB_ID, JOB_TITLE, MIN_SALARY, MAX_SALARY) values ('BI_ANL','Analista de BI', 2000, 10000);
    insert into OEHR_JOBS (JOB_ID, JOB_TITLE, MIN_SALARY, MAX_SALARY) values ('ML_ENG','Engenheiro de Machine Learning', 5000, 25000);
    insert into OEHR_JOBS (JOB_ID, JOB_TITLE, MIN_SALARY, MAX_SALARY) values ('WEB_DEV','Desenvolvedor Web', 1000, 8000);
    insert into OEHR_JOBS (JOB_ID, JOB_TITLE, MIN_SALARY, MAX_SALARY) values ('SC_MSTR','Scrum Master', 2000, 11000);
    insert into OEHR_JOBS (JOB_ID, JOB_TITLE, MIN_SALARY, MAX_SALARY) values ('PROD_OWNER','Product Owner', 7000, 25000);
    insert into OEHR_JOBS (JOB_ID, JOB_TITLE, MIN_SALARY, MAX_SALARY) values ('SYS_ADMIN','Administrador de Sistemas', 2000, 1000);
END;
/

-- 1) Inserindo 10 registros em OEHR_COUNTRIES --
BEGIN
    insert into OEHR_COUNTRIES (COUNTRY_ID, COUNTRY_NAME, REGION_ID) values ('PA','Paraguai',2);
    insert into OEHR_COUNTRIES (COUNTRY_ID, COUNTRY_NAME, REGION_ID) values ('RS','Russia',1);
    insert into OEHR_COUNTRIES (COUNTRY_ID, COUNTRY_NAME, REGION_ID) values ('VN','Venezuela',2);
    insert into OEHR_COUNTRIES (COUNTRY_ID, COUNTRY_NAME, REGION_ID) values ('GF','Guiana Francesa',2);
    insert into OEHR_COUNTRIES (COUNTRY_ID, COUNTRY_NAME, REGION_ID) values ('UR','Uruguai',2);
    insert into OEHR_COUNTRIES (COUNTRY_ID, COUNTRY_NAME, REGION_ID) values ('NO','Noruega',1);
    insert into OEHR_COUNTRIES (COUNTRY_ID, COUNTRY_NAME, REGION_ID) values ('CR','Croacia',1);
    insert into OEHR_COUNTRIES (COUNTRY_ID, COUNTRY_NAME, REGION_ID) values ('RO','Romenia',1);
    insert into OEHR_COUNTRIES (COUNTRY_ID, COUNTRY_NAME, REGION_ID) values ('AL','Alemanha',1);
    insert into OEHR_COUNTRIES (COUNTRY_ID, COUNTRY_NAME, REGION_ID) values ('VA','Vaticano',1);
END;
/


-- 2) Exclua o trabalho na tabela JOB_HISTORY, onde o EMPLOYEE_ID seja igual a 100. --
delete from OEHR_JOB_HISTORY
where EMPLOYEE_ID = 100;


-- 3) Altere o nome da tabela REGIONS para REGIOES. --
alter table OEHR_REGIONS
rename to OEHR_REGIOES;


-- 4) Altere o nome e o último nome de um empregado, a sua escolha.
select * from OEHR_EMPLOYEES;

update OEHR_EMPLOYEES
set FIRST_NAME = 'Monica',
    LAST_NAME = 'King'
where EMPLOYEE_ID = 101;


-- 5) Modifique o nome da pessoa que possua um salario menor que 2600 cadastrado para ela. --
select * from OEHR_EMPLOYEES
where salary < 2600;

update OEHR_EMPLOYEES
set FIRST_NAME = 'Michael',
    LASt_NAME = 'Felps'
where EMPLOYEE_ID = 127;


-- 6) Selecione todas as colunas da tabela Jobs --
select * from OEHR_JOBS;


-- 7) Na tabela Jobs, selecione as colunas Job_id e Job_title --
select JOB_ID, JOB_TITLE
from OEHR_JOBS;


-- 8) Na tabela Jobs, selecione as colunas Job_id, Job_title, e Max_salary, e crie a Max_salary+300 --
select JOB_ID, JOB_TITLE,
    MAX_SALARY,
    MAX_SALARY + 300 as 'MAX_SALARY_PLUS_300'
from OEHR_JOBS;


-- 9) Crie um apelido para a coluna job_id da tabela jobs. --
SELECT JOB_ID AS "JOB CODE",
       JOB_TITLE,
       MIN_SALARY,
       MAX_SALARY
FROM OEHR_JOBS;


-- 10) Concatene todos os campos da tabela Jobs. --
select JOB_ID || ' - ' ||
       JOB_TITLE || ' - ' ||
       MIN_SALARY || ' - ' ||
       MAX_SALARY as CONCATENADO
from OEHR_JOBS;


-- 11) Concatene o campo job_title com o texto “ que ele possui o maior salário de “ com max_salary, que estão na tabela Jobs. --
select JOB_TITLE || ' que possui o maior salário é de ' || MAX_SALARY as "MAIOR SALARIO DO JOB"
from OEHR_JOBS;


-- 12) Crie uma consulta para exibir o nome e o salário dos funcionários que recebem mais de 2.850. --
select FIRST_NAME || ' ' || LAST_NAME as "NAME", SALARY
from OEHR_EMPLOYEES
where SALARY > 2850;


-- 13) Crie uma consulta para exibir o nome e o salário de todos os funcionários cujos salários não estejam na faixa entre US$1.500 e US$2.850 --
select FIRST_NAME || ' ' || LAST_NAME as "NAME", SALARY
from OEHR_EMPLOYEES
where SALARY between 1500 and 2850;


/* 14)Crie uma consulta para exibir o nome do funcionário, 
o cargo e a data de admissão (HIRE_DATE) dos funcionários admitidos entre 20 de fevereiro de 2005 
e 1 de maio de 2005. Ordene a consulta de modo crescente pela data inicial. */
select FIRST_NAME || ' ' || LAST_NAME as "NAME",
       JOB_ID as "JOB",
       HIRE_DATE
from OEHR_EMPLOYEES
where HIRE_DATE between TO_DATE('20/02/2005', 'DD/MM/YYYY') and TO_DATE('01/05/2005', 'DD/MM/YYYY');


-- 15) Exiba o nome e o cargo de todos os funcionários que não possuem um gerente.
select FIRST_NAME || ' ' || LAST_NAME as "NAME", JOB_ID
from OEHR_EMPLOYEES
where MANAGER_ID IS NULL;