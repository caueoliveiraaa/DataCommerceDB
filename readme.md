# Data Commerce DB

## ℹ️ About the project

A PostgreSQL analytical database project focused on **user behavior, product performance, and sales trends.**</br>
It provides a SQL‑only workflow with modular scripts for database lifecycle management, schema definition, and data population. The project emphasizes clean design practices and prepares the ground for advanced analytics through views, functions, and procedures.</br></br>
This project was made for educational purposes, therefore it contains some exercises, some documentations for consulting SQL concepts, logic that sometimes would not be ideal in real world projects, etc. However, it mirrors a real life database project.

## 🐘 Project Structure

```plaintexct
DataCommerceDB/
│
├── 01_scripts/
│   ├── 01_drop_and_create_database.sql
│   ├── 02_create_schema_and_tables.sql
│   ├── 03_insert_data.sql
│   └── 04_check_inserted_data.sql
│
├── 02_schema/
│   ├── 01_joins/
│   │   ├── 01_inner_join.sql
│   │   ├── 01_left_join.sql
│   │   ├── 03_right_join.sql
│   │   ├── 04_full_join.sql
│   │   ├── 05_self_join.sql
│   │   └── 06_cross_join.sql
│   │
│   ├── 02_subqueries/
│   │   ├── 01_subquery_select.sql
│   │   ├── 02_subquery_from.sql
│   │   ├── 03_subquery_where.sql
│   │   └── 04_subquery_correlated.sql
│   │
│   ├── 03_views/
│   │   ├── 01_inactive_users.sql
│   │   ├── 02_valid_products.sql
│   │   ├── 03_invalid_products.sql
│   │   ├── 04_top_valid_producsts.sql
│   │   ├── 05_all_rows_with_nulls.sql
│   │   └── 06_all_users_orders.sql
│   │
│   ├── 04_functions/
│   │   ├── 01_check_stock.sql
│   │   ├── 02_try_division.sql
│   │   └── 03_get_user_history.sql
│   │
│   ├── 05_procedures/
│   │   ├── 01_insert_random_dates.sql
│   │   ├── 02_increment_stock.sql
│   │   ├── 03_insert_new_users.sql
│   │   └── 04_insert_recent_months.sql
│   │
│   ├── 06_triggers/
│   │   └── 01_update_timestamp.sql
│   │
│   ├── 07_indexes/
│   │   └── 01_non_clustered_index_user_id.sql
│   │
│   ├── 08_ctes/
│   │   ├── 01_oldest_ten_users.sql
│   │   ├── 02_highest_price_per_category.sql
│   │   ├── 03_all_active_users_with_orders.sql
│   │   ├── 04_quantity_of_invalid_users.sql
│   │   └── 05_turn_query_into_cte.sql
│   │
│   ├── 09_window_functions/
│   │   ├── 01_top_three_rank.sql
│   │   └── 02_percentage_diff_lag.sql
│   │
│   └── 10_improving_a_query/
│   │   ├── 01_top_three_rank.sql
│   │   └── 02_create_indexes.sql
│
├── 03_exercises/
│   ├── 01_basic_exercises.sql
│   ├── 02_join_and_subqueries.md
│   ├── 03_modifying_data.md
│   ├── 04_aggragate.md
│   ├── 05_transactions.md
│   ├── 06_dates.md
│   ├── 07_strings.md
│   └── 08_recursive.md
│
├── .gitignore
└── readme.md
```

## 📄 Structuring Description

### 📜 01_scripts_setup

The 01_scripts_setup/ folder contains executable SQL scripts for database lifecycle:

- Create, drop, and reset the database.
- Define schema and tables.
- Insert sample data for users, products, and orders.
- Grant permissions to roles.

### 🗂️ 02_schema_commerce

The 02_schema_commerce/ folder contains reusable SQL logic for manipulating and consulting data:

- Joins.
- Subqueries.
- Views.
- Functions.
- Procedures.
- Triggers.
- Procedures.
- Indexes.
- CTEs.
- Window Functions.
- Improving Queries.
- Tests.

### 🦾 Exercises

The exercises/ folder contains PostgreSQL exercises for learning and practicing SQL with real world problem-solving.</br>
They can be found on [this website](https://pgexercises.com/).

### 📂 Root

The root of the project contains a .gitignore and readme.md file, their goal is:

- .gitignore: ignore files that should not be commited to the repository.
- readme.md: document the project, from the setup to the execution.

## ⚙️ Project setup

Steps to make the project work properly:

- Install PostgreSQL locally or connect to a PostgreSQL server.
- Install Visual Studio Code, the PostgreSQL extension and its software:
  - [Visual Studio Code](https://code.visualstudio.com/)
  - [PostgreSQL VS Code extension](https://marketplace.visualstudio.com/items?itemName=ckolkman.vscode-postgres)
  - [pgAdmin](https://www.pgadmin.org/)
- Clone the repository and open it in VS Code.
- Run the scripts in order:
  - 01_drop_and_create_database.sql → resets the database.
  - 02_create_schema_and_tables.sql → creates schema and tables.
  - 03_insert_users.sql, 04_insert_products.sql, 05_insert_orders.sql → populate data.
  - grant_permissions.sql → sets up roles and permissions.

## 🔌 Connection & Execution

To execute the script **01_drop_and_create_database.sql**, it is necessary to connect to the default postgres database (or any other database except the one being dropped). This ensures that PostgreSQL allows the drop operation without conflicts.</br>
Once connected, you can run the script directly in your SQL editor or through the VS Code PostgreSQL extension.

Once the database **commerce_database** has been created, create a new connection to it.</br>
Once the new connection has been stablished, you may run the other scripts to populate the database.

## 📊 Business rules

Rules regarding tables and their relation to each other and their data:

- Users: Each user has a unique email and can be registered only once.
- Products: Each product has a unique name. Products cannot have negative or zero prices.
- Orders:
  - An order links a user to a product.
  - Orders can only be made once per day for the same user and product. This prevents duplicate daily purchases of the same item by the same user.
  - Quantity must always be greater than zero.
- Timestamps:
  - created_at records when the row was inserted.
  - updated_at is automatically refreshed by triggers whenever a row is modified.

## 🛠️ Tools & Softwares

The tools and softwares used in this project are:

- **PostgreSQL** → the database engine.
- **Visual Studio Code** → the main editor.
- **PostgreSQL VS Code extension** → to run queries directly inside VS Code.
- **Canva** → for schema visualization and flowcharts.
- **Git** → version control for scripts.
- **pgAdmin** (optional) → graphical interface for PostgreSQL.
