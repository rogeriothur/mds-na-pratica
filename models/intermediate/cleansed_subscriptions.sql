{{ config(materialized="table") }}

with cleansed_subscriptions as (
    select
        *
    from
        {{ ref("subscriptions") }}
)

select
    cl.user_id,
    cl.plan,
    case
        when
            plan in ('Business', 'Diamond', 'Gold', 'Platinum', 'Premium') then 'High'
        when
            plan in ('Bronze', 'Essential', 'Professional', 'Silver', 'Standard') then 'Normal'
        else
            'Low'
    end as subscription_importance,
    cl.status,
    cl.payment_term,
    cl.payment_method,
    cl.subscription_term
from
    cleansed_subscriptions as cl
