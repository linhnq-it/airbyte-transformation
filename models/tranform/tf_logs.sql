select
    a.clientid Client_id,
    b.name client_name
from {{ ref('meey_log_logs') }} a
left join {{ ref('meey_log_clients') }} b
    on a.clientid = b.id
order by id desc
