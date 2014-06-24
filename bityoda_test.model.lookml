- connection: slby

- scoping: true                  # for backward compatibility
- include: "*.view.lookml"       # include all the views
- include: "*.dashboard.lookml"  # include all the dashboards

- base_view: a

- base_view: employee

- base_view: load_history

- base_view: load_segment_table

- base_view: pg_tables

- base_view: urlstuff

