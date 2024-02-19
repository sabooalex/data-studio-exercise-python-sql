
{{
    config (

        materialized = 'table',
        

    )

}}



with fct_reviews as (
                        select * from  AIRBNB.DBT_ASABOO.FCT_REVIEWS
),

full_moon_dates as (
                    select * from AIRBNB.DBT_ASABOO.SEED_FULL_MOON_DATES
)

select  r.*
       , case 
            when fm.full_moon_date is null then 'not full moon'
            else 'Full Moon'
        end as is_full_moon
from fct_reviews r 
left join full_moon_dates as fm
on to_date(r.review_date) = dateadd(day,1,fm.full_moon_date)

 