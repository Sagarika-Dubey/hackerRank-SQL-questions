select round(lat_n, 4) as median
from (
    select 
        lat_n,
        row_number() over(order by lat_n) as row_num,
        count(lat_n) over() as total_row
    from 
        station
    ) as subquery
where row_num = ceil(total_row/2);