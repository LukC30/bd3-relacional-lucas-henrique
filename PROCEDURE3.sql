SET @NUM = 5;


DELIMITER $
CREATE PROCEDURE CONTAGEM_PACIENTES(OUT TOTAL_PACIENTES INT(10))
BEGIN
SELECT COUNT(ID_PACIENTE) INTO TOTAL_PACIENTES FROM TBL_PACIENTE;

END
$

CALL CONTAGEM_PACIENTES(@TOTAL_PACIENTES);
SELECT @TOTAL_PACIENTES;
DROP PROCEDURE CONTAGEM_PACIENTES;