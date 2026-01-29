with source as (
    select * from {{ source('jaffle_shop', 'customers') }}
),

renamed as (
    select
        -- Adjust these based on the headers you see in the result grid!
        id,
        name as customer_name
    from source
)

select * from renamed