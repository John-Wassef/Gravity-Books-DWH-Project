# Gravity Books Data Warehouse (DWH) Project

This repository contains the necessary files, scripts, and reports for the **Gravity Books Data Warehouse (DWH)** project. The project integrates book-related data using a **Snowflake Schema**, ensuring better normalization and data integrity. It includes ETL processes, SQL scripts for creating tables, SSAS solutions, and interactive Power BI reports for insightful data analysis.

---

## Project Overview

The **Gravity Books DWH** project aims to provide a robust data warehousing solution for managing and analyzing book sales, customer details, shipping costs, and publisher performance. It incorporates the following features:

- **ETL Processes**: Designed and implemented using SQL Server Integration Services (SSIS).
- **SSAS Solutions**: Multidimensional cubes for analytical data processing.
- **Power BI Dashboards**: Interactive visualizations for key performance indicators.
- **Snowflake Schema**: A normalized schema with interconnected dimension and fact tables.

---

## Repository Structure

### 1. **Backup Files**
- **ETL.bak**: Backup file for the ETL processes used in the project.
- **Gravity_books.bak**: Backup of the Gravity Books database.

### 2. **Queries Folder**
Contains SQL scripts for creating the Snowflake Schema:
- **CreateDimDate.sql**: Script for creating the `DimDate` table (Date Dimension).
- **Schema.sql**: Scripts to create tables for dimension and fact tables:
  - Dimension Tables:
    - `dim_customer`: Customer details.
    - `dim_address`: Address details.
    - `dim_add_status`: Address status.
    - `dim_cust_address`: Linking customer and address.
    - `dim_book`: Book information.
    - `dim_author`: Author information.
    - `dim_book_author`: Linking books and authors.
    - `dim_cust_order`: Customer orders.
    - `dim_order_status`: Order statuses.
    - `dim_order_history`: Order history.
  - Fact Table:
    - `fact_order_line`: Links sales data with various dimension tables.

### 3. **Power BI Report**
- Includes a `.jpeg` file showing Power BI visualizations such as:
  - Sales trends over time.
  - Shipping costs analysis.
  - Publisher performance metrics.
  - Sales by book titles and customer locations.

### 4. **SSIS and SSAS Files**
- **SSIS**: Integration packages for ETL processes.
- **SSAS**: Cubes for multidimensional data analysis.

### 5. **Documentation**
- **PDFs**: Detailed project documentation explaining the schema, ETL process, and analytics setup.

---

## How to Use This Repository

### 1. Clone the Repository
```bash
git clone https://github.com/John-Wassef/Gravity-Books-DWH-Project.git
