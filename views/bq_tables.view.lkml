view: bq_tables {
  derived_table: {
    sql: select concat(table_schema,'.',table_name)  as bq_tables from ecommerce_retail_cust1.INFORMATION_SCHEMA.TABLES
      where table_name = 'users'
      union all
      select concat(table_schema,'.',table_name) as bq_tables from ecommerce_retail_cust2.INFORMATION_SCHEMA.TABLES
      where table_name = 'users'
       ;;
  }

  dimension: bq_tables {
    type: string
    sql: ${TABLE}.bq_tables;;
  }
}
