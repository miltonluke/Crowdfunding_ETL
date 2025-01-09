DROP TABLE IF EXISTS campaign;
DROP TABLE IF EXISTS contacts;
DROP TABLE IF EXISTS category;
DROP TABLE IF EXISTS subcategory;

CREATE TABLE subcategory (
	subcategory_id VARCHAR(10) PRIMARY KEY,
	subcategory_name VARCHAR(30) NOT NULL
);

CREATE TABLE category (
	category_id VARCHAR(10) PRIMARY KEY,
	category_name VARCHAR(30) NOT NULL
);

CREATE TABLE contacts (
	contact_id INTEGER PRIMARY KEY,
	first_name VARCHAR(30) NOT NULL,
	last_name VARCHAR(30) NOT NULL,
	email VARCHAR(50) NOT NULL
);

CREATE TABLE campaign (
	cf_id INTEGER PRIMARY KEY,
	contact_id INTEGER,
	company_name VARCHAR (40) NOT NULL,
	description VARCHAR(60) NOT NULL,
	goal NUMERIC (10, 2),
	pledged NUMERIC (10, 2),
	outcome VARCHAR(10) NOT NULL,
	backers_count INTEGER,
	country VARCHAR(2) NOT NULL,
	currency VARCHAR(3) NOT NULL,
	launch_date DATE,
	end_date DATE,
	category_id VARCHAR(10) NOT NULL,
	subcategory_id VARCHAR(10) NOT NULL,
    FOREIGN KEY (contact_id) REFERENCES contacts(contact_id),
    FOREIGN KEY (category_id) REFERENCES category(category_id),
	FOREIGN KEY (subcategory_id) REFERENCES subcategory(subcategory_id)
);

SELECT * FROM subcategory;
SELECT * FROM category;
SELECT * FROM contacts;
SELECT * FROM campaign;