- view: pg_tables
  sql_table_name: public.pg_tables
  fields:

  - dimension: hasindexes
    type: yesno
    sql: ${TABLE}.hasindexes

  - dimension: hasrules
    type: yesno
    sql: ${TABLE}.hasrules

  - dimension: hastriggers
    type: yesno
    sql: ${TABLE}.hastriggers

  - dimension: schemaname
    sql: ${TABLE}.schemaname

  - dimension: tablename
    sql: ${TABLE}.tablename

  - dimension: tableowner
    sql: ${TABLE}.tableowner

  - dimension: tablespace
    sql: ${TABLE}.tablespace

  - measure: count
    type: count
    detail: detail*


  # ----- Detail ------
  sets:
    detail:
      - schemaname
      - tablename

