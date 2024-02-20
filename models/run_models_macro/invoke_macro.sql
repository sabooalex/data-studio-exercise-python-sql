with ramesh as 
(

{{ no_nulls_in_columns( ref("dim_hosts_cleansed"), "Annette" ) }}
)
select * from ramesh