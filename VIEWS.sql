CREATE VIEW LISTAGEM_GERAL_MEDICO AS
SELECT * FROM TBL_MEDICO;


#LISTAGEM MEDICO/ESPECIALIDADE
  
Create view listagem_medico_especialidade as
SELECT a.nome, a.celular, a.email, b.nome_especialidade
from tbl_medico a 
inner join tbl_especialidade b 
on b.id = a.id_especialidade;

#Listagem sala/especialdiade
create view listagem_sala_especialidade as
select a.id, b.nome_especialidade
from tbl_sala a
inner join tbl_especialidade b
on a.id_especialidade = b.id;

#LISTAGEM AGENDA

create view agenda_completa as
SELECT 
a.data_cirurgia, a.status_cirurgia,
b.num_sala as sala
, c.nome as nome_medico, c.celular as celular_medico,
d.nome_paciente,d.celular_paciente, d.nome_responsavel, d.telefone_responsavel
from tbl_agenda a
inner join tbl_sala b
on a.id_sala = b.id
inner join tbl_medico c on
c.id = a.id_medico
inner join tbl_paciente d on 
d.id_paciente = a.id_paciente;


#drop view listagem_medico_especialidade
