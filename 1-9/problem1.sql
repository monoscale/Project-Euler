with numbers(x) as (
	select 1 x 
	from dual
		union all
	select x + 1
	from numbers
	where x < 999
)
select sum(case when mod(x,3) == 0 or mod(x,5) = 0 then x end) solution
from numbers;