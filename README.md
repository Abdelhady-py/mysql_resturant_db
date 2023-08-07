

# Restaurant Database

This repository contains the database schema and sample data for a restaurant management system.

## Contents

- `create_db.sql` - SQL script to create the database schema
- `populate.sql` - SQL script to populate the DB with sample data 
- `ERD_physical_model` - Entity relationship diagram of the database model (open using mysql workbench)

## Overview

The database models a simple restaurant system with the following features:

- Maintain customers table with customer information
- Manage meals with pricing and ingredients
- Track orders taken including items ordered and total price
- Store restaurant staff and roles information
- Record payment methods for orders

The schema is optimized for a web-based restaurant management application architecture.

## Usage

To restore the database:

1. Create a new MySQL database 
2. Run the `create_db.sql` script to create the tables
3. Run the `populate.sql` to populate initial data
4. Refer `ERD_physical_model` for Visual schema

The database can now be used for development/testing or integrated with a live restaurant application.

## Database Details

- MySQL 8.1
- Database uses InnoDB engine
- Foreign keys provided for integrity 

## Contributing

Pull requests are welcome to enhance the model or provide additional sample data!

Let me know if you would like any changes or have additional questions!
