with
    source_fornecedores
     as (
        select
            supplier_id
            ,company_name
         	,contact_name
         	,contact_title
         	,address
            ,city
         	,region
         	,postal_code
         	,country
         	,phone
         	,fax
            --,homepage
        from {{ source('erp','suppliers') }}
    )
select *
from source_fornecedores