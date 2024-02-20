{{
    config(materialized= 'incremental')

}}


with src_hosts 
as 
(
    select * from {{ ref('src_hosts') }}
)

select 
    host_id

     ,NVL(host_name,'Anonymous') AS host_name
    ,is_superhost
    ,created_At
    ,updated_at



 from src_hosts
 where host_name is null
