# Lego Database
![image](https://github.com/user-attachments/assets/fa746f14-d209-448a-9027-ec635610c858)

Image credits: Unsplash/Xavi Cabrera

## About
Author: Kimberlee Wong

This repository shows the process of taking data about Legos, processing it, and then uploading it into a database in order to write an SQL query to answer a specific question. There is a data cleaning file and data visualization file both done in R, and the original SQL query was written using DuckDB. 

## Data
The data comes from Kaggle, a data sciene platform and community. The database was put on Kaggle by Rachel Tatman, but the data was compiled by Rebrickable.   `

## Repository Structure

```
lego_database
│
├── .DS_Store                                           
├── README.md                                            
├── .gitignore
├── Dependencies
├── lego_project
│   ├── lego.db
│   ├── lego.db.wal
│   ├── data_cleaning.qmd
│   ├── lego_visualization.qmd
│   ├── .DS_Store
│   ├── tables.sql
│   ├── query.sql                                                                      
│   ├── data/                       
|   │   ├── colors.csv
|   │   ├── sets.csv
|   │   ├── themes.csv
|   │   ├── inventories.csv
|   │   ├── inventory_parts.csv
```
## Sources
https://www.kaggle.com/datasets/rtatman/lego-database/data?select=sets.csv
