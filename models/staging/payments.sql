WITH src_payments AS (
    SELECT * FROM workshop_mds.mongodb_payments
)

SELECT
    sp.user_id,
    sp.city,
    sp.race,
    sp.country,
    sp.currency,
    sp.credit_card_type,
    sp.subscription_price
FROM
    src_payments AS sp