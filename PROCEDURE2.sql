DELIMITER $
CREATE PROCEDURE LISTAGEM_AGENDA_PARAM(in id_medico_param int)
BEGIN
SELECT 
a.data_cirurgia, a.status_cirurgia,
b.num_sala as sala,
c.nome as nome_medico, c.celular as celular_medico,
d.nome_paciente,d.celular_paciente, d.nome_responsavel, d.telefone_responsavel
from tbl_agenda a
inner join tbl_sala b
on a.id_sala = b.id
inner join tbl_medico c on
c.id = a.id_medico
inner join tbl_paciente d on 
d.id_paciente = a.id_paciente
where a.id_medico = id_medico_param;



END
$

call listagem_agenda_param(3);