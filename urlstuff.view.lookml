- view: urlstuff
  sql_table_name: public.urlstuff
  fields:

  - dimension: count
    type: int
    sql: ${TABLE}.count

  - dimension: cur_page
    sql: ${TABLE}.cur_page

  - dimension: url
    sql: ${TABLE}.url

  - measure: count
    type: count
    detail: detail*


  # ----- Detail ------
  sets:
    detail:

