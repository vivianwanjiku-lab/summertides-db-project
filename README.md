# 🌊 SummerTides Festival Database

## Project Summary
SummerTides is a three-day beach festival with live music, DJs, vendors, art exhibits, and sponsors. This project delivers a complete relational database to track artists, stages, sponsors, performances, attendees, vendors, and sales.

## Folder Structure
- `database/` — Build scripts to initialize the database.
- `queries/` — SQL exercises and business queries.
- `docs/` — Data dictionary and ER documentation.
- `presentation/` — Presentation slide notes.

## Running the Project
Use SQLite for local execution:

```bash
cd /home/vivian-ace/Documents/summertides-db-project
sqlite3 summertides.db < database/01_create_database.sql
sqlite3 summertides.db < database/02_create_tables.sql
sqlite3 summertides.db < database/03_insert_data.sql
sqlite3 summertides.db < database/04_constraints.sql
```

Run the queries from the `queries/` folder against `summertides.db`.

## Deliverables
- Functional relational database schema
- Primary and foreign key relationships
- Constraints for NOT NULL, UNIQUE, CHECK, and DEFAULT values
- Realistic sample data
- Multiple views for common reporting
- Query scripts for selection, filtering, sorting, aggregation, and joins
- Documentation and presentation notes
