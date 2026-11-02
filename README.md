# Sistema de Banco de Dados — Fórmula 1

Projeto acadêmico desenvolvido na disciplina de banco de dados do curso de Análise e Desenvolvimento de Sistemas (ADS), na UDF.

## Visão geral

O projeto implementa um banco de dados relacional para organizar informações relacionadas à Fórmula 1. O modelo contempla países, equipes, pilotos, corridas e participantes.

## Modelo de dados

O banco contém cinco tabelas:

- `paises`: países associados às equipes, pilotos e corridas.
- `equipes`: equipes e seus países de origem.
- `pilotos`: pilotos, nacionalidades e equipes.
- `corridas`: Grandes Prêmios, países-sede e quantidade de voltas.
- `participantes`: associação entre corridas e pilotos, incluindo posição de largada.

A tabela `participantes` utiliza uma chave primária composta por `sigla_gp` e `num_piloto`.

## Tecnologias utilizadas

- MySQL
- SQL
- MySQL Workbench

## Estrutura dos arquivos

| Arquivo | Descrição |
|---|---|
| `database.sql` | Criação do banco de dados |
| `schema.sql` | Criação das cinco tabelas e relacionamentos |
| `inserts.sql` | Inserção dos dados de exemplo |
| `queries.sql` | Consultas, alteração de tabela e atualização de dados |
| `LICENSE` | Licença MIT |
| `.gitignore` | Arquivos locais que não devem ser versionados |

## Como executar

1. Instale o MySQL Server e o MySQL Workbench.
2. Abra o MySQL Workbench e conecte-se ao servidor.
3. Execute `database.sql`.
4. Execute `schema.sql`.
5. Execute `inserts.sql`.
6. Execute `queries.sql`.

**Atenção:** execute os arquivos nessa ordem. O arquivo `queries.sql` adiciona a coluna `salario`; se for executado novamente no mesmo banco, o comando `ALTER TABLE` poderá apresentar erro porque a coluna já existe. Para repetir o exercício, recrie o banco ou ajuste o script.

## Conteúdos SQL praticados

O projeto utiliza `CREATE DATABASE`, `CREATE TABLE`, chaves primárias e estrangeiras, `INSERT`, `SELECT`, `INNER JOIN`, `LIKE`, `UPPER`, `IN`, `ALTER TABLE`, `UPDATE`, `CASE`, `BETWEEN`, `GROUP BY`, `AVG`, `ROUND`, `DISTINCT` e `ORDER BY`.

## Demonstração

Adicione nesta seção capturas de tela do MySQL Workbench mostrando:
- As cinco tabelas criadas.
- Os registros inseridos.
- Algumas consultas executadas e seus resultados.

## Objetivo acadêmico

Consolidar conhecimentos de modelagem relacional, integridade referencial, manipulação de dados e consultas SQL.

## Autor

Arthur Hansel Fernandes Santos  
Curso: Análise e Desenvolvimento de Sistemas — UDF

- GitHub: https://github.com/arthurhansel2002
- LinkedIn: https://www.linkedin.com/in/arthur-hansel-fernandes-santos-8b4931430/
- E-mail: arthurhansel2002@gmail.com
