CREATE FUNCtion minimo	(valor1 int, valor2 int) RETURNS int AS $$ 
DECLARE 
	minimo int;
	BEGIN 
		if valor1 > valor2 then minimo = valor2;
		else minimo = valor1;
		end if;
		return minimo;
		end; $$
		language PLPGSQL;
