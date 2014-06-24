- view: load_segment_table
  sql_table_name: public.load_segment_table
  fields:

  - dimension: completion_timestamp
    sql: ${TABLE}.completion_timestamp

  - dimension: file_number
    type: number
    sql: ${TABLE}.file_number

  - dimension: instance_name
    sql: ${TABLE}.instance_name

  - dimension: repository_id
    type: int
    sql: ${TABLE}.repository_id

  - dimension: rows_loaded
    type: number
    sql: ${TABLE}.rows_loaded

  - dimension: schema_name
    sql: ${TABLE}.schema_name

  - dimension: segment_id
    type: int
    sql: ${TABLE}.segment_id

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
      - instance_name
      - schema_name
      - table_name

