
USE Fit2WalkMarketDB;

CREATE TABLE IF NOT EXISTS shoes(
	b_id VARCHAR(10) NOT NULL,
	b_name VARCHAR(20),
	b_unitPrice  INTEGER,
	b_brand VARCHAR(20),
	b_description TEXT,
	b_color VARCHAR(20),
   	b_category VARCHAR(20),	
	b_unitsInStock LONG,
	b_releaseDate   VARCHAR(20),
	b_condition VARCHAR(20),
	b_fileName  VARCHAR(20),
	PRIMARY KEY (b_id)
)default CHARSET=utf8;

desc shoes;


