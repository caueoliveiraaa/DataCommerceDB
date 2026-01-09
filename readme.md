# Data Commerce DB

## ℹ️ About the project

A PostgreSQL analytical database project focused on **user behavior, product performance, and sales trends.**</br>
It provides a SQL‑only workflow with modular scripts for database lifecycle management, schema definition, and data population. The project emphasizes clean design practices and prepares the ground for advanced analytics through views, functions, and procedures.</br></br>
This project was made for educational purposes, therefore it contains some exercises, some documentations for consulting SQL concepts, etc. However, it mirrors a real life database project.

## 🐘 Project Structure

```plaintexct
DataCommerceDB/
│
├── exercises/
│   └── basic_exercises.md_
│
├── schema/
│   ├── functions/
│   │   ├── calculate_discount.sql
│   │   └── predict_revenue.sql
│   │
│   ├── procedures/
│   │   ├── archive_old_orders.sql
│   │   └── monthly_cleanup.sql
│   │
│   ├── triggers/
│   │   └── update_timestamp.sql
│   │
│   └── views/
│       ├── active_users.sql
│       └── top_products.sql
│
├── scripts/
│   ├── 01_drop_and_create_database.sql
│   ├── 02_create_schema_and_tables.sql
│   ├── 03_insert_users.sql
│   ├── 04_insert_products.sql
│   ├── 05_insert_orders.sql
│   └── grant_permissions.sql
│
├── .gitignore
└── readme.md
```

## 📄 Structuring Description

### 🦾 Exercises

The exercises/ folder contains PostgreSQL exercises for learning and practicing SQL with real world problem-solving.</br>
They can be found on [here](https://pgexercises.com/).

### 🗂️ Schema

The schema/ folder contains reusable SQL objects:

- Functions: reusable calculations (e.g., discounts, revenue predictions).
- Procedures: operational tasks (e.g., archiving old orders).
- Triggers: automatic actions (e.g., updating timestamps).
- Views: analytical perspectives (e.g., active users, top products).

### 📜 Scripts

The scripts/ folder contains executable SQL scripts for database lifecycle:

- Create, drop, and reset the database.
- Define schema and tables.
- Insert sample data for users, products, and orders.
- Grant permissions to roles.

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
