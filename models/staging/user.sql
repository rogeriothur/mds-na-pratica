WITH src_user AS (
    SELECT * FROM workshop_mds.mongodb_user
)

SELECT
    su.id,
    su.user_id,
    su.username,
    su.gender,
    su.employment,
    su.credit_card,
    su.subscription
FROM
    src_user AS su