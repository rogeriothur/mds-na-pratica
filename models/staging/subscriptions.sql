WITH src_subscriptions AS (
    SELECT * FROM workshop_mds.mongodb_subscriptions
)

SELECT
    ss.user_id,
    ss.plan,
    ss.status,
    ss.payment_term,
    ss.payment_method,
    ss.subscription_term
FROM
    src_subscriptions AS ss