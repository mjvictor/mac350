CREATE TABLE SERVICO(
    cod_ser 	integer not NULL,
    nome_ser 	varchar(50) not NULL,
    CONSTRAINT pk_ser PRIMARY KEY (cod_ser)
);

CREATE TABLE TRILHA(
    cod_tr 	integer not NULL,
    nome_tr	varchar(50),
    CONSTRAINT pk_tr PRIMARY KEY (cod_tr)
);

CREATE TABLE PERFIL(
    cod_per	integer not NULL,
    nome_per	varchar(50) not NULL,
    CONSTRAINT pk_per PRIMARY KEY (cod_per)
);

CREATE TABLE MODULO(
    cod_mod	integer not NULL,
    nome_mod	varchar(50) not NULL,
    min_dis	integer not NULL,
    total_dis	integer not NULL,
    cod_tr 	integer not NULL,
    CONSTRAINT pk_mod PRIMARY KEY (cod_mod),
    CONSTRAINT fk_tr 
	FOREIGN KEY (cod_tr)
	REFERENCES TRILHA(cod_tr)
	ON DELETE CASCADE
	ON UPDATE CASCADE
);

CREATE TABLE USUARIO(
    login	varchar(100) not NULL,
    senha	varchar(6) not NULL,
    nome	varchar(50) not NULL,
    cod_per	integer not NULL,
    CONSTRAINT pk_us PRIMARY KEY (login),
    CONSTRAINT fk_per
	FOREIGN KEY (cod_per)
	REFERENCES PERFIL(cod_per)
	ON DELETE CASCADE
	ON UPDATE CASCADE
);	

CREATE TABLE ALUNO(
    nusp	  integer not NULL,
    ano_ingresso  integer not NULL,
    login_us	  varchar(100) not NULL,
    CONSTRAINT pk_al PRIMARY KEY (nusp),
    CONSTRAINT fk_us
	FOREIGN KEY (login_us)
	REFERENCES USUARIO(login)
	ON DELETE CASCADE
	ON UPDATE CASCADE
);

CREATE TABLE SER_PER(
    cod_ser	integer not NULL,
    cod_per	integer not NULL,
    CONSTRAINT pk_ser_per PRIMARY KEY (cod_ser, cod_per),
    CONSTRAINT fk_ser
	FOREIGN KEY (cod_ser)
	REFERENCES SERVICO(cod_ser)
	ON DELETE CASCADE
	ON UPDATE CASCADE,
    CONSTRAINT fk_per
	FOREIGN KEY (cod_per)
	REFERENCES PERFIL(cod_per)
	ON DELETE CASCADE
	ON UPDATE CASCADE
);

CREATE TABLE DISCIPLINA(
    cod_dis		varchar(7) not NULL,
    nome_dis 		varchar(50) not NULL,
    descricao_dis 	varchar(1000) not NULL,
    creditos		integer not NULL,
    carga_hor		integer not NULL,
    CONSTRAINT pk_dis PRIMARY KEY (cod_dis)
);

CREATE TABLE OBRIGATORIA(
    cod_dis	varchar(7) not NULL,
    CONSTRAINT pk_obr PRIMARY KEY (cod_dis),
    CONSTRAINT fk_dis
	FOREIGN KEY (cod_dis)
	REFERENCES DISCIPLINA(cod_dis)
	ON DELETE CASCADE
	ON UPDATE CASCADE
);

CREATE TABLE OPTATIVA(
    cod_dis 		varchar(7) not NULL,
    tipo_optativa 	varchar(7) not NULL,
    CONSTRAINT pk_opt PRIMARY KEY (cod_dis),
    CONSTRAINT fk_dis
	FOREIGN KEY (cod_dis)
	REFERENCES DISCIPLINA(cod_dis)
	ON DELETE CASCADE
	ON UPDATE CASCADE
);

CREATE TABLE OP_MOD(
    cod_dis 	varchar(7) not NULL,
    cod_mod	integer not NULL,
    CONSTRAINT pk_op_mod PRIMARY KEY (cod_dis, cod_mod),
    CONSTRAINT fk_dis
	FOREIGN KEY (cod_dis)
	REFERENCES OPTATIVA(cod_dis)
	ON DELETE CASCADE
	ON UPDATE CASCADE,
    CONSTRAINT fk_mod
	FOREIGN KEY (cod_mod)
	REFERENCES MODULO(cod_mod)
	ON DELETE CASCADE
	ON UPDATE CASCADE
);

CREATE TABLE PLANEJA(
    cod_dis 		varchar(7) not NULL,
    nusp_al 		integer not NULL,
    aproveitamento 	varchar(11) not NULL,
    CONSTRAINT pk_pla PRIMARY KEY (cod_dis, nusp_al),
    CONSTRAINT fk_dis 
	FOREIGN KEY (cod_dis)
	REFERENCES DISCIPLINA(cod_dis)
	ON DELETE CASCADE
	ON UPDATE CASCADE,
    CONSTRAINT fk_al
	FOREIGN KEY (nusp_al)
	REFERENCES ALUNO(nusp)
	ON DELETE CASCADE
	ON UPDATE CASCADE
);

