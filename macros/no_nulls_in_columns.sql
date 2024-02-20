{% macro no_nulls_in_columns(model,column_value) %}
    select * from {{ model }}
    where host_id = "{{ column_value }}"

{% endmacro %}