CREATE TABLE Disciplina (
  id SERIAL  NOT NULL ,
  Nome VARCHAR    ,
  Ementa VARCHAR      ,
PRIMARY KEY(id));



CREATE TABLE Horario (
  id SERIAL  NOT NULL ,
  Descricao VARCHAR      ,
PRIMARY KEY(id));



CREATE TABLE Professor (
  Id SERIAL  NOT NULL ,
  Nome VARCHAR      ,
PRIMARY KEY(Id));



CREATE TABLE Aluno (
  id SERIAL  NOT NULL ,
  Nome VARCHAR    ,
  Endereço VARCHAR      ,
PRIMARY KEY(id));




CREATE TABLE Campus (
  id SERIAL  NOT NULL ,
  Nome VARCHAR    ,
  Endereço VARCHAR      ,
PRIMARY KEY(id));




CREATE TABLE Turma (
  Id SERIAL  NOT NULL ,
  Horario_id INTEGER   NOT NULL ,
  Professor_Id INTEGER   NOT NULL ,
  Campus_id INTEGER   NOT NULL ,
  Disciplina_id INTEGER   NOT NULL ,
  AnoSemestre VARCHAR      ,
PRIMARY KEY(Id)        ,
  FOREIGN KEY(Disciplina_id)
    REFERENCES Disciplina(id),
  FOREIGN KEY(Campus_id)
    REFERENCES Campus(id),
  FOREIGN KEY(Professor_Id)
    REFERENCES Professor(Id),
  FOREIGN KEY(Horario_id)
    REFERENCES Horario(id));


CREATE INDEX Acesso_FKIndex2 ON Turma (Disciplina_id);
CREATE INDEX Acesso_FKIndex3 ON Turma (Campus_id);
CREATE INDEX Acesso_FKIndex4 ON Turma (Professor_Id);
CREATE INDEX Acesso_FKIndex5 ON Turma (Horario_id);


CREATE INDEX IFK_Rel_04 ON Turma (Disciplina_id);
CREATE INDEX IFK_Rel_05 ON Turma (Campus_id);
CREATE INDEX IFK_Rel_06 ON Turma (Professor_Id);
CREATE INDEX IFK_Rel_07 ON Turma (Horario_id);


CREATE TABLE Acesso (
  id SERIAL  NOT NULL ,
  Aluno_id INTEGER   NOT NULL ,
  Acesso_2_Id INTEGER   NOT NULL ,
  Nome VARCHAR      ,
PRIMARY KEY(id)    ,
  FOREIGN KEY(Acesso_2_Id)
    REFERENCES Turma(Id),
  FOREIGN KEY(Aluno_id)
    REFERENCES Aluno(id));


CREATE INDEX Turma_FKIndex1 ON Acesso (Acesso_2_Id);
CREATE INDEX Acesso_FKIndex_aluno ON Acesso (Aluno_id);


CREATE INDEX IFK_Rel_11 ON Acesso (Acesso_2_Id);
CREATE INDEX IFK_Rel_12 ON Acesso (Aluno_id);


