CREATE TABLE CLIENTE (idCLIENTE INTEGER UNSIGNED NOT NULL AUTO_INCREMENT,NOME VARCHAR(60) NULL,DATANASCI VARCHAR(60) NULL,CPF VARCHAR(60) NULL,EMAIL VARCHAR(60) NULL,TELEFONE VARCHAR(60) NULL,PRIMARY KEY(idCLIENTE) );

CREATE TABLE  CURSO (idCURSO INTEGER UNSIGNED NOT NULL AUTO_INCREMENT,NOMECURSO VARCHAR(60) NULL,CARGAHORARIA VARCHAR(60) NULL,DESCRICAO VARCHAR(60) NULL,PRIMARY KEY(idCURSO) );

CREATE table INSCRICAO (idCURSO INTEGER UNSIGNED NOT NULL, idCLIENTE INTEGER UNSIGNED NOT NULL,datainscricao DATE NOT NULL,datacancelamento DATE NULL, PRIMARY KEY (idCURSO,idCLIENTE), FOREIGN KEY (idCLIENTE) REFERENCES CLIENTE(idCLIENTE), FOREIGN KEY (idCURSO) REFERENCES CURSO(idCURSO) );

insert into CLIENTE values (1,"PhillipeSilva","22/03/1991","110.543.298-00","pitagph@gmail.com","98256780");

insert into CLIENTE values (2,"Silva","2/03/1998","110.627.349-41","ph@gmail.com","987121233");

insert into CURSO values (1,"Sistemas de Informação","100hrs","Curso de Tecnologia de Informação e seus derivados");

insert into CURSO values (2,"Marking Digital","50hrs","Curso de Marking publicitario e seus derivados");

insert into INSCRICAO values (1,1,20180602,null);

insert into INSCRICAO values (2,2,20200220,null);


select NOME,EMAIL,TELEFONE,NOMECURSO,CARGAHORARIA,DESCRICAO from CLIENTE a INNER JOIN INSCRICAO r on a.idCLIENTE = r.idCLIENTE INNER JOIN CURSO b on b.idCURSO = r.idCURSO;

select NOME,EMAIL,NOMECURSO,CARGAHORARIA,DESCRICAO,datainscricao from CLIENTE a INNER JOIN INSCRICAO r on a.idCLIENTE = r.idCLIENTE INNER JOIN
CURSO b on b.idCURSO = r.idCURSO;


