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
    theme_id VARCHAR,
    num_parts INTEGER 
);

-- Put dataset in
COPY sets FROM 'data/sets.csv' (header TRUE, nullstr "NA");



-- Drop tables in case I need to rerun them
DROP TABLE themes;
DROP TABLE sets;


