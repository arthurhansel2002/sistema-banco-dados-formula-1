USE db_Formula1;

INSERT INTO paises (codigo, nome) VALUES
('BRA', 'Brasil'),
('ITA', 'Itália'),
('FRA', 'França'),
('GBR', 'Reino Unido'),
('GER', 'Alemanha'),
('ESP', 'Espanha'),
('USA', 'Estados Unidos'),
('JPN', 'Japão'),
('AUS', 'Austrália'),
('CAN', 'Canadá'),
('AUT', 'Áustria'),
('CHE', 'Suíça');

INSERT INTO equipes (sigla, nome, cod_pais) VALUES
('FER', 'Ferrari', 'ITA'),
('MCL', 'McLaren', 'GBR'),
('MER', 'Mercedes', 'GER'),
('RBR', 'Red Bull Racing', 'AUT'),
('WIL', 'Williams', 'GBR'),
('ALP', 'Alpine', 'FRA'),
('AST', 'Aston Martin', 'GBR'),
('SAU', 'Sauber', 'CHE'),
('HAS', 'Haas', 'USA'),
('LOT', 'Lotus', 'GBR');

INSERT INTO pilotos (numero, nome, cod_pais, sigla_equipe) VALUES
(1, 'Ayrton Senna', 'BRA', 'MCL'),
(2, 'Felipe Massa', 'BRA', 'FER'),
(3, 'Nelson Piquet', 'BRA', 'WIL'),
(4, 'Rubens Barrichello', 'BRA', 'FER'),
(5, 'Emerson Fittipaldi', 'BRA', 'LOT'),
(6, 'Jarno Trulli', 'ITA', 'LOT'),
(7, 'Giancarlo Fisichella', 'ITA', 'FER'),
(8, 'Andrea de Cesaris', 'ITA', 'MCL'),
(9, 'Alain Prost', 'FRA', 'ALP'),
(10, 'Pierre Gasly', 'FRA', 'ALP');

INSERT INTO corridas (sigla_gp, nome_gp, cod_pais, voltas) VALUES
('GPBRA', 'Grande Prêmio do Brasil', 'BRA', 71),
('GPITA', 'Grande Prêmio da Itália', 'ITA', 53),
('GPFRA', 'Grande Prêmio da França', 'FRA', 53),
('GPGBR', 'Grande Prêmio da Grã-Bretanha', 'GBR', 52),
('GPGER', 'Grande Prêmio da Alemanha', 'GER', 67),
('GPESP', 'Grande Prêmio da Espanha', 'ESP', 66),
('GPAUS', 'Grande Prêmio da Austrália', 'AUS', 58),
('GPJPN', 'Grande Prêmio do Japão', 'JPN', 53),
('GPCAN', 'Grande Prêmio do Canadá', 'CAN', 70),
('GPUSA', 'Grande Prêmio dos Estados Unidos', 'USA', 56);

INSERT INTO participantes (sigla_gp, num_piloto, posicao_larg) VALUES
('GPBRA', 1, 1),
('GPITA', 2, 2),
('GPFRA', 3, 3),
('GPGBR', 4, 4),
('GPGER', 5, 5),
('GPESP', 6, 6),
('GPAUS', 7, 7),
('GPJPN', 8, 8),
('GPCAN', 9, 9),
('GPUSA', 10, 10);
