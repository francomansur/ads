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