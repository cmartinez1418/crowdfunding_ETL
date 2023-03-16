CREATE TABLE category (
    category_id VARCHAR PRIMARY KEY NOT NULL,
    category VARCHAR NOT NULL
);

SELECT * FROM category;

CREATE TABLE contacts (
    contact_id INT PRIMARY KEY NOT NULL,
    first_name VARCHAR NOT NULL,
    last_name VARCHAR NOT NULL,
    email VARCHAR NOT NULL
);

SELECT * FROM contacts;

CREATE TABLE subcategory (
    subcategory_id VARCHAR PRIMARY KEY NOT NULL,
    subcategory VARCHAR NOT NULL
);

SELECT * FROM subcategory;

CREATE TABLE campaign (
    cf_id INT NOT NULL,
    contact_id INT NOT NULL,
        FOREIGN KEY (contact_id) REFERENCES contacts(contact_id),
    company_name VARCHAR NOT NULL,
    description VARCHAR NOT NULL,
    goal INT NOT NULL,
    pledged INT NOT NULL,
    outcome VARCHAR NOT NULL,
    backers_count INT NOT NULL,
    country VARCHAR NOT NULL,
    currency VARCHAR NOT NULL,
    launch_date DATE NOT NULL,
    end_date DATE NOT NULL,
    category_id VARCHAR NOT NULL,
        FOREIGN KEY (category_id) REFERENCES category(category_id),
    subcategory_id VARCHAR NOT NULL,
        FOREIGN KEY (subcategory_id) REFERENCES subcategory(subcategory_id)
);

SELECT * FROM campaign; 