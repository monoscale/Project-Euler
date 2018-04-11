with fibonacci(prev, n) as (
	select 1, 2
	from dual
		union all
	select n, prev + n
	from fibonacci
	where n < 4000000
)
select sum(case when mod(prev, 2) = 0 then prev end) solution
from fibonacci;