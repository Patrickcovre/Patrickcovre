	create table mercado1 (
	id int primary key,
	descricao varchar,
	preco decimal(5,2),
	categoria varchar
	);
	
	insert into mercado1
	(id, descricao, preco, categoria)
	values
	(1, 'serve para limpar', 10.99, 'limpeza'),
	(2, 'moedor', 16.99, 'moer'),
	(3, 'gelar coisas', 99.99, 'geladeira'),
	(4, 'amaciante', 20.99, 'limpeza'),
	(5, 'esfregar', 11.99, 'limpeza');
	
	select * from mercado1
	
create function mercado(patrick numeric) returns numeric as $$
declare
	resultado numeric; 
	begin
		resultado = patrick + (patrick * 0.10);
		return resultado;
	end;
	$$ language PLPGSQL;
	
	select mercado(20)

