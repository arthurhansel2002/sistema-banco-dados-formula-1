USE db_Formula1;

CREATE TABLE paises (
    codigo VARCHAR(5) PRIMARY KEY,
    nome VARCHAR(50) NOT NULL
);

CREATE TABLE equipes (
    sigla VARCHAR(10) PRIMARY KEY,
    nome VARCHAR(50) NOT NULL,
    cod_pais VARCHAR(5) NOT NULL,
    FOREIGN KEY (cod_pais) REFERENCES paises(codigo)
);

CREATE TABLE pilotos (
    numero INTEGER PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    cod_pais VARCHAR(5) NOT NULL,
    sigla_equipe VARCHAR(10) NOT NULL,
    FOREIGN KEY (cod_pais) REFERENCES paises(codigo),
    FOREIGN KEY (sigla_equipe) REFERENCES equipes(sigla)
);

CREATE TABLE corridas (
    sigla_gp VARCHAR(10) PRIMARY KEY,
    nome_gp VARCHAR(100) NOT NULL,
    cod_pais VARCHAR(5) NOT NULL,
    voltas INTEGER NOT NULL,
    FOREIGN KEY (cod_pais) REFERENCES paises(codigo)
);

CREATE TABLE participantes (
    sigla_gp VARCHAR(10),
    num_piloto INTEGER,
    posicao_larg INTEGER NOT NULL,
    PRIMARY KEY (sigla_gp, num_piloto),
    FOREIGN KEY (sigla_gp) REFERENCES corridas(sigla_gp),
    FOREIGN KEY (num_piloto) REFERENCES pilotos(numero)
);
