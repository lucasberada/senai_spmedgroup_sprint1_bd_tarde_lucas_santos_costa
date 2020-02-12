-----------------DQL----------------

use spmedgroupDDL

-----exxxxx5-----
select prontuario.nome_passiente,prontuario.RG,consulta.dataconsulta,consulta.situacaoconsulta
from prontuario
inner join consulta on prontuario.idprontuario = consulta.idprontuario

select prontuario.nome_passiente,prontuario.RG,consulta.dataconsulta,consulta.situacaoconsulta,medico.nome_medico
from prontuario
inner join consulta on prontuario.idprontuario = consulta.idprontuario
inner join  medico on prontuario.idprontuario= medico.idmedico

select medico.nome_medico,especialidades.nomeespecialidades
from medico
inner join especialidades on medico.idmedico = especialidades.idespecialidade


select medico.nome_medico,clinica.nomeclinica
from medico
inner join clinica on medico.idmedico =clinica.idclinica


SELECT COUNT(idusuario) FROM usuario

SELECT usuario.nomeusuario,usuario.email,CONVERT(VARCHAR(10), datanascimento, 110) AS [MM/DD/YYYY]
FROM usuario

CREATE PROC IDADEDOPACIENTE 
@id INT AS
SELECT YEAR(GETDATE())-YEAR(datanascimento)-IIF(MONTH(GETDATE())*32+DAY(GETDATE())<MONTH(datanascimento)*32+DAY(datanascimento),1,0) 
FROM usuario
WHERE usuario.idusuario = @id


--EXECUTAR PROCEDURE ULTIMO EX
EXECUTE IDADEDOPACIENTE   3



