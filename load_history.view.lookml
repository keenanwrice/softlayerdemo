- view: load_history
  sql_table_name: public.load_history
  fields:

  - dimension: schema_name
    sql: ${TABLE}.schema_name

  - dimension: state
    sql: ${TABLE}.state

  - dimension: table_name
    sql: ${TABLE}.table_name

  - dimension: transaction_id
    type: int
    sql: ${TABLE}.transaction_id

  - dimension: transaction_timestamp
    sql: ${TABLE}.transaction_timestamp

  - measure: count
    type: count
    detail: detail*


  # ----- Detail ------
  sets:
    detail:
      - table_name
      - schema_name

