# data-tools.nvim

Vim tool work working with the modern data stack

Supported tools:
- dbt
    - Cloud
    - Semantic layer
    - Docs
- Databases
    - Snowflake
    - Duckdb
    - Postgres
    - MySQL
    - SQLite
    - BigQuery
    - Clickhouse
- Datafold
- Looker

# TODO
- [x] Select query
- [ ] Cycle through parents queries and back 
- [ ] Send query to database and return result in window
- [ ] Query window should have tabs to compare current query with past queries
- [ ] Jinja should automatically be replaces with the actual SQL
- [ ] Macros should be available to for quickly checking queries
    - [ ] Insert `select * from {{ CTE }} limit 10`
    - [ ] Replace all `{{ ref('relation') }}` with the actual `db.schema.relation`
    - [ ] Replace all `db.schema.relation` with `{{ ref('relation') }}`

