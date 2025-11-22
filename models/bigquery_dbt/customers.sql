{{ config(
    materialized = 'table'
) }}

select
    Index        as index,
    Customer_Id  as customer_id,
    concat(First_Name, " ", Last_Name) as name,
    Company      as company,
    City         as city,
    Country      as country,
    Phone_1      as phone_no,
    Email        as email,
    Subscription_Date as subscription_date,
    Website      as website
from {{ source('bigquery_dbt', 'raw_customers') }}
