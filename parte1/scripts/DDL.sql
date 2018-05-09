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

