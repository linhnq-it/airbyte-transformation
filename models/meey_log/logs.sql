select
    a.clientId ClientId,
    b.name clientName
from {{ ref('meey_log_logs') }} a
left join {{ ref('meey_log_clients') }} b
    on a.clientId = b.id
order by id desc
