with _stg_bikeshare__bikeshare_day as (select * from {{ ref('stg_bikeshare__bikeshare_day') }})

, final as (select
    year (date_day) as trading_year
     , month (date_day) as trading_month
     , sum (casual_users) as casual_users
     , sum (registered_users) as registered_users
     , sum (total_users) as total_users
from analytics.stg_bikeshare__bikeshare_day
group by all)

select * from final