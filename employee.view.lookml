- view: employee
  sql_table_name: public.employee
  fields:

  - dimension: age
    type: int
    sql: ${TABLE}.age

  - dimension: name
    sql: ${TABLE}.name

  - dimension: salary
    type: int
    sql: ${TABLE}.salary

  - measure: count
    type: count
    detail: detail*


  # ----- Detail ------
  sets:
    detail:
      - name

