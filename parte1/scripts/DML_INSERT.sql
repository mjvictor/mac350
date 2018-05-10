INSERT INTO SERVICO
VALUES(1, 'Inserção'),
      (2, 'Vizualização'),
      (3, 'Alteração'),
      (4, 'Remoção');

INSERT INTO TRILHA
VALUES(1, 'Sistemas'),
      (2, 'IA'),
      (3, 'Ciência de dados'),
      (4, 'Teoria da computação');

INSERT INTO PERFIL
VALUES(1, 'Comum'),
      (2, 'Superusuário');

INSERT INTO MODULO
VALUES(1, 'Desenvolvimento de software', 4, 4, 1),
      (2, 'Banco de Dados', 2, 3, 1),
      (3, 'Introdução a IA', 2, 3, 2),
      (4, 'Núcleo 1', 5, 5, 3),
      (5, 'Otimização 1', 2, 2, 4);

INSERT INTO USUARIO
VALUES('victor.joao@usp.br', 'fea342', 'Victor João', 2),
      ('leolanavo@gmail.com', 'fae722', 'Leonardo Lana', 1),
      ('beatriz.marouelli@usp.br','imebcc', 'Beatriz Marouelli', 1),
      ('akasolak@gmail.com', 'fie828', 'André Solak', 2),
      ('gabriely.pereira@usp.br', 'fje902', 'Gabriely Rangel', 2);

INSERT INTO ALUNO
VALUES('9793551', 2016, 'victor.joao@usp.br');

INSERT INTO SER_PER
VALUES(1, 1),
      (4, 2),
      (2, 2),
      (3, 2),
      (1, 2);

INSERT INTO DISCIPLINA
VALUES('PNV2324', 'Instalações de Máquinas Marítimas',   
      'Projeto de instalação propulsoras…', 4, 60),
      ('CEN0120', 'Princípios de Bioquímica', 'A célula, 
       macromoléculas, água e soluto. P…', 2, 30),
      ('CJE0551', 'Jornalismo Científico', 'Conhecimento 
       dos conceitos relacionados ao bo…',  5, 105),
      ('MAC0323', 'ED II', 'Aula do Cueio', 4, 60),
      ('MAC0218', 'TEC PROG II', 'Sei lá, não vou na aula do
	Gubi', 4, 60);

INSERT INTO OBRIGATORIA
VALUES('MAC0323');

INSERT INTO OPTATIVA
VALUES('PNV2324', 'Livre'),
      ('CEN0120', 'Livre'),
      ('CJE0551', 'Livre'),
      ('MAC0218', 'Eletiva');

INSERT INTO OP_MOD
VALUES('MAC0218', 1);

INSERT INTO PLANEJA
VALUES('MAC0218', '9793551', 'Eletiva'),
      ('MAC0323', '9793551', 'Obrigatoria');
