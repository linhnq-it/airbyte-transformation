select
    a.clientId,
    b.name
from {{ ref('meey_log_logs') }} a
left join {{ ref('meey_log_clients') }} b
  on a.clientId = b.idd
order by id desc