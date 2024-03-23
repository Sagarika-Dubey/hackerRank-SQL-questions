with recursive cte as (
    select 1 as n
    union
    select n+1
    from cte
    where n < 1000
), cte2 as (
    select x.n as num, y.n as divisor, x.n%y.n as rem
    from cte as x, cte as y
    where y.n <= sqrt(x.n) and x.n%y.n = 0
), cte3 as (
    select num
    from cte2
    where num != 1
    group by 1
    having count(*) = 1
    order by 1
)
select group_concat(num separator '&')
from cte3