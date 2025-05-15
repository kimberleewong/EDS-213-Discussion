-- Add tables into database

-- themes 
CREATE TABLE themes (
    id INTEGER NOT NULL,
    name VARCHAR NOT NULL,
    parent_id VARCHAR
);

-- Put dataset in
COPY themes FROM 'data/themes.csv' (header TRUE, nullstr "NA");

-- View themes
SELECT * FROM themes;

-- sets
CREATE TABLE sets (
    set_num VARCHAR,
    name VARCHAR,
    year INTEGER,
    theme_id INTEGER,
    num_parts VARCHAR 
);

-- Put dataset in
COPY sets FROM 'data/sets.csv' (header TRUE, nullstr "NA");

-- View sets
SELECT * FROM sets;

-- colors
CREATE TABLE colors (
    id VARCHAR,
    name VARCHAR,
    rgb VARCHAR,
    is_trans VARCHAR
);

-- Put dataset in
COPY colors FROM 'data/colors.csv' (header TRUE, nullstr "NA");

-- View colors
SELECT * FROM colors;

-- inventories
CREATE TABLE inventories (
    id INTEGER,
    version INTEGER,
    set_num VARCHAR
);

-- Put dataset in
COPY inventories FROM 'data/inventories.csv' (header TRUE, nullstr "NA");

-- View sets
SELECT * FROM inventories;

-- inventory_parts
CREATE TABLE inventory_parts (
    inventory_id INTEGER,
    part_num VARCHAR,
    color_id INTEGER,
    quantity INTEGER, 
    is_spare VARCHAR
);

-- Put dataset in
COPY inventory_parts FROM 'data/inventory_parts.csv' (header TRUE, nullstr "NA");

-- View sets
SELECT * FROM inventory_parts;

-- Drop tables in case I need to rerun them
DROP TABLE themes;
DROP TABLE sets;
DROP TABLE colors;
DROP TABLE inventories;
DROP TABLE inventory_parts;




