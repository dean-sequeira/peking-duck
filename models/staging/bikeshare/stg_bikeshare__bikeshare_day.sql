with src as (select * from {{ source('bikeshare', 'bikeshare_day') }})

   , final as
    (select
         instant
       , dteday::date         as date_day
       , season
       , yr
       , mnth
       , holiday
       , weekday
       , workingday = 1 as is_working_day
       , weathersit     as weather_situation
       , temp           as temperature
       , atemp          as average_temperature
       , hum            as humidity
       , windspeed      as wind_speed
       , casual         as casual_users
       , registered     as registered_users
       , cnt            as total_users
     from src)

select *
from final
