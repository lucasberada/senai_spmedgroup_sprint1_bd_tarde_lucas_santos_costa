use spmedgroupDDL

insert into especialidades (nomeespecialidades)
values ('otorrinolaringologista'),('pediatra'),('fonoaldiologo'),('obstetra'),('ortopedista');

SELECT * FROM especialidades
SELECT * FROM usuario
SELECT * FROM medico
SELECT * FROM prontuario
SELECT * FROM consulta





insert into tipousuario(titulotipousuario)
values ('ADM'),('medico'),('paciente');

insert into adm (idtipousuario,nomeadm,senha,email)
values (1,'lucas','00000000','lucas@gmail.com');

insert into clinica (idadm,CNPJ,nomeclinica,localizacao)
values (1,'111111111111','spmedgroup','alameda barao de limeira')

insert into usuario (idtipousuario,idadm,nomeusuario,email,datanascimento)
values (3,1,'carol professora','carol@gmail.com','11/11/1990'),
(3,1,'saulo professor','saulo@gmail.com','21/11/1993'),
 (3,1,'possarle professor','roberto@gmail.com','1/11/1940'),
 (3,1,'ivete professora','ivete@gmail.com','11/1/1999');

insert into usuario (idtipousuario,idadm,nomeusuario,email,datanascimento)
values (2,1,'daniel','daniel@gmail.com','11/12/1990');

insert into medico (idusuario,idespecialidades,nome_medico,CRM)
values (5,1,'daniel souza','9999999');

insert into prontuario (idclinica,nome_passiente,RG,CPF,DataNascimento,telefone)
values (1,'carol professora','234234234-3','223234556','11/11/1990','11932344223')

insert into consulta (idmedico,idclinica,idprontuario,dataconsulta,situacaoconsulta)
values (1,1,1,'22/10/2020','marcada')

insert into passiente (idusuario,idconsulta,RG,CPF)
values (1,2,'234234234-3','223234556')






























