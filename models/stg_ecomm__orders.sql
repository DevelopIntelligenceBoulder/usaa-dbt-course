with base as (

    select *
    from {{ source('ecomm','orders') }}

), fields as (

    select
        id as order_id,
        customer_id,
        created_at as ordered_at,
        status as order_status,
        store_id,
        total_amount,
        reordered_from_id,
        _synced_at
    from base

)

select *
from fields