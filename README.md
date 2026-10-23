# sql-data-warehouse-project
# SQL Data Warehouse Project

## Project Overview

This project focuses on building a modern data warehouse using Microsoft SQL Server. It is a hands-on learning project designed to understand data warehousing concepts, ETL processes, data cleaning, data modeling, and SQL-based analytics.

The project uses sample sales data from CRM (Customer Relationship Management) and ERP (Enterprise Resource Planning) source systems.

## Objectives

- Build a data warehouse using SQL Server.
- Import data from CSV files.
- Clean and transform raw data using SQL.
- Organize data into Bronze, Silver, and Gold layers.
- Design analytical tables for reporting and business insights.
- Practice SQL development and data engineering concepts.

## Data Architecture

This project follows the Medallion Architecture, which consists of three layers:

### 1. Bronze Layer
Stores raw data from source CSV files with minimal transformations.

### 2. Silver Layer
Cleans, standardizes, and transforms data to improve data quality and consistency.

### 3. Gold Layer
Contains business-ready data organized for analytical queries and reporting.

## Technologies Used

- Microsoft SQL Server
- SQL Server Management Studio (SSMS)
- T-SQL
- CSV datasets
- Git and GitHub
- Draw.io for data architecture and data modeling (if used)

## Project Workflow

1. Understand the source datasets.
2. Design the data warehouse architecture.
3. Load raw data into the Bronze layer.
4. Clean and transform data in the Silver layer.
5. Build analytical tables in the Gold layer.
6. Validate data quality and test SQL queries.
7. Perform SQL-based analysis to identify sales trends, customer behavior, and product performance.

## Repository Structure

The repository will contain SQL scripts, datasets, documentation, and tests as the project develops.

- `datasets/` — Source CSV files.
- `docs/` — Project documentation and diagrams.
- `scripts/` — SQL scripts for database creation, data loading, and transformations.
- `tests/` — SQL scripts for validating data quality.

*Note: The actual folder structure may change as the project progresses.*

## Project Status

Currently in development. I am building this project step by step while learning SQL Server, data warehousing, ETL, and data modeling.

## Learning Resources and Acknowledgment

This project is inspired by the SQL Data Warehouse tutorial by Data With Baraa.

Tutorial: https://youtu.be/5266en9bae0

Original project: https://github.com/DataWithBaraa/sql-data-warehouse-project

This repository is intended to document my learning process and practical implementation of the concepts covered in the tutorial.
