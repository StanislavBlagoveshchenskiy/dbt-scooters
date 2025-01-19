select
    tp.id,
    tp.user_id,
    tp.scooter_hw_id,
    tp.started_at,
    tp.finished_at,
    tp.start_lat,
    tp.start_lon,
    tp.finish_lat,
    tp.finish_lon,
    tp.distance_m,
    tp.price_rub,
    tp.duration_s,
    tp.is_free,
    tp.date,
    sru.sex,
    extract(year from tp.started_at) - extract(year from sru.birth_date) as age,
    {{ updated_at() }}
from {{ ref("trips_prep") }} as tp
left join {{ source("scooters_raw", "users") }} as sru
    on tp.user_id = sru.id
{% if is_incremental() %}
    where tp.id > (select max(id) from {{ this }})
    order by tp.id
    limit 75000
{% else %}
where tp.id <= 75000
{% endif %}
