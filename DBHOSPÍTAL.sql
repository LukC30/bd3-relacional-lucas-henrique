CREATE DATABASE DB_HOSPITAL;
USE DB_HOSPITAL;

CREATE TABLE TBL_ESPECIALIDADE(
ID int unsigned auto_increment,
nome_especialidade varchar(100) not null,
constraint primary key (ID)
);

CREATE TABLE TBL_PACIENTE(
id_paciente int unsigned auto_increment, 
nome_paciente varchar(50) not null,
telefone_paciente char(10) null,
celular_paciente char(11) not null,
email_paciente varchar(30) not null,
nome_responsavel varchar(50) not null,
telefone_responsavel char(11) not null,
constraint primary key (id_paciente)

);
CREATE TABLE TBL_PACIENTE_bkp(
id_paciente int unsigned auto_increment, 
nome_paciente varchar(50) not null,
telefone_paciente char(10) null,
celular_paciente char(11) not null,
email_paciente varchar(30) not null,
nome_responsavel varchar(50) not null,
telefone_responsavel char(11) not null,
constraint primary key (id_paciente),
date_delete datetime default now()
);


CREATE TABLE TBL_MEDICO(
ID INT UNSIGNED AUTO_INCREMENT,
NOME VARCHAR(50) NOT NULL,
CELULAR CHAR(11),
EMAIL VARCHAR(30),
ID_ESPECIALIDADE INT UNSIGNED NOT NULL,
CONSTRAINT PRIMARY KEY (ID),
FOREIGN KEY(ID_ESPECIALIDADE)
REFERENCES TBL_ESPECIALIDADE(ID)
);

CREATE TABLE TBL_INSUMOS(
ID INT UNSIGNED AUTO_INCREMENT,
ID_PACIENTE INT UNSIGNED,
NOME VARCHAR(40),
QNTD_INSUMO DECIMAL(10,2),
CONSTRAINT PRIMARY KEY(ID),
FOREIGN KEY (ID_PACIENTE)
REFERENCES TBL_PACIENTE(ID_PACIENTE)
);

CREATE TABLE TBL_SALA(
ID INT UNSIGNED AUTO_INCREMENT,
ID_ESPECIALIDADE INT UNSIGNED NOT NULL, 
NUM_SALA VARCHAR(10) NOT NULL,
CONSTRAINT PRIMARY KEY (ID),
FOREIGN KEY (ID_ESPECIALIDADE)
REFERENCES TBL_ESPECIALIDADE(ID)
);

CREATE TABLE TBL_AGENDA(
ID INT UNSIGNED AUTO_INCREMENT,
ID_SALA INT UNSIGNED NOT NULL,
ID_MEDICO INT UNSIGNED NOT NULL,
ID_PACIENTE INT UNSIGNED NOT NULL,
DATA_CIRURGIA varchar(10) NOT NULL,
STATUS_CIRURGIA ENUM('AGENDADO','CONCLUIDO','CANCELADO'),

CONSTRAINT PRIMARY KEY(ID),
FOREIGN KEY (ID_SALA)
REFERENCES TBL_SALA(ID),
FOREIGN KEY (ID_MEDICO) 
REFERENCES TBL_MEDICO(ID),
FOREIGN KEY (ID_PACIENTE)
REFERENCES TBL_PACIENTE(ID_PACIENTE)
);

#drop database db_hospital;
#DESCRIBE "NOME DA TABELA"

