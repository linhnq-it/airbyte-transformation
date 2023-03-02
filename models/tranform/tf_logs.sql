select
    a.clientid Client_id,
    b.name client_name
from {{ ref('logs') }} a
left join {{ ref('clients') }} b
    on a.clientid = b.id
order by id desc
