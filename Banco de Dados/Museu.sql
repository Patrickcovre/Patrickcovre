. Códigos SQL Museu - 17.03.2022 - 3B . Alice Alves, Amanda Miranda, Cauã Cardozo, Patrick Covre 
criações das tabelas: 
create table contas( 
cod int primary key, 
lucro bigint, 
mes_ano varchar, 
valor_tot_estoque bigint, 
valor_tot_funcionarios bigint, 
valor_tot_bilheteria bigint, 
gastos_extras bigint 
); 
create table bilheteria( 
num_pulseira int primary key, 
entrada varchar, 
esta_museu varchar, 
cod_visitante int 
); 
create table cadastro( 
cpf varchar primary key, 
nome varchar, 
checkin date, 
idade int, 
cod_bilhete int references bilheteria (num_pulseira) 
); 
create table funcionarios( 
pis varchar primary key, 
nome varchar, 
carga_horaria varchar, 
data_nasc date, 
salario int, 
cpf varchar, 
cargo varchar, 
email varchar 
); 
create table lojas_parceiras( 
cnpj varchar primary key, 
horario_funcionamento varchar,
produtos varchar, 
nome varchar, 
email varchar 
); 
create table obras( 
cod_obra int primary key, 
nome varchar, 
autor varchar, 
ano_feito int, 
tipo varchar, 
sessao int, 
pais_de_origem varchar, 
restauracoes varchar, 
cod_funcionario varchar references funcionarios (pis) 
); 
importações: 
\copy contas from ‘C:\Users\Patrick_c_r\Downloads\contas.csv’ delimiter ‘;’ csv header; 
\copy bilheteria from ‘C:\Users\Patrick_c_r\Downloads\bilheteria.csv’ delimiter ‘;’ csv header; 
\copy cadastro from ‘C:\Users\Patrick_c_r\Downloads\cadastro.csv’ delimiter ‘;’ csv header; 
\copy funcionarios from ‘C:\Users\Patrick_c_r\Downloads\funcionarios.csv’ delimiter ‘;’ csv header; 
\copy lojas_parceiras from ‘C:\Users\Patrick_c_r\Downloads\lojas_parceiras.csv’ delimiter ‘;’ csv header; 
\copy obras from ‘C:\Users\Patrick_c_r\Downloads\obras.csv’ delimiter ‘;’ csv header; 
visualizações e exportações úteis: 
\copy ( select * from cadastro where idade >= 18 ) to 
'C:\Users\alice_k_alves\Downloads\menores_de_18.csv' delimiter ';' csv header; // para visualizar os cadastros em que a pessoa possui 18 ou mais anos.
\copy ( select * from funcionarios where salario < 1000 ) to 
'C:\Users\alice_k_alves\Downloads\funcionarios_menores_milreais' delimiter ';' csv header; // para visualizar os funcionários que ganham menos de mil reais 
\copy ( select * from lojas_parceiras where horario_funcionamento ilike '%18 p.m%' ) to 'C:\Users\alice_k_alves\Downloads\horario_18' delimiter ';' csv header; // para visualizar as lojas parceiras que funcionam das 18 horas até um horário x ou de um horário x até as 18 horas. 
\copy ( select * from obras where tipo ilike '%pintura%' ) to 
'C:\Users\alice_k_alves\Downloads\obras_tipo_pintura' delimiter ';' csv header; // para visualizar todas as obras que sejam do tipo “pintura”.
