- view: a
  sql_table_name: public.a
  fields:

  - dimension: pagerank
    type: int
    sql: ${TABLE}.pagerank

  - dimension: pageurl
    sql: ${TABLE}.pageurl

  - measure: count
    type: count
    detail: detail*


  # ----- Detail ------
  sets:
    detail:

