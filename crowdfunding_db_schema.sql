CREATE TABLE Category (
    category_id VARCHAR(10) NOT NULL,
    category VARCHAR(255) UNIQUE NOT NULL,
    CONSTRAINT pk_Category PRIMARY KEY (category_id)
);

CREATE TABLE Subcategory (
    subcategory_id VARCHAR(10) NOT NULL,
    subcategory VARCHAR(255) UNIQUE NOT NULL,
    CONSTRAINT pk_Subcategory PRIMARY KEY (subcategory_id)
);

CREATE TABLE Contacts (
    contact_id INT NOT NULL,
    first_name VARCHAR(255) NOT NULL,
    last_name VARCHAR(255) NOT NULL,
    email VARCHAR(255) NOT NULL,
    CONSTRAINT pk_Contacts PRIMARY KEY (contact_id)
);

CREATE TABLE Campaign (
    cf_id INT NOT NULL,
    contact_id INT NOT NULL,
    company_name VARCHAR(255),
    description TEXT,
    goal FLOAT NOT NULL,
    pledged FLOAT NOT NULL,
    outcome VARCHAR(50),
    backers_count INT,
    country VARCHAR(2),
    currency VARCHAR(3),
    launched_date DATE,
    end_date DATE,
    category_id VARCHAR(10) NOT NULL,
    subcategory_id VARCHAR(10) NOT NULL,
    CONSTRAINT pk_Campaign PRIMARY KEY (cf_id)
);

ALTER TABLE Campaign ADD CONSTRAINT fk_Campaign_contact_id FOREIGN KEY(contact_id)
REFERENCES Contacts (contact_id);

ALTER TABLE Campaign ADD CONSTRAINT fk_Campaign_category_id FOREIGN KEY(category_id)
REFERENCES Category (category_id);

ALTER TABLE Campaign ADD CONSTRAINT fk_Campaign_subcategory_id FOREIGN KEY(subcategory_id)
REFERENCES Subcategory (subcategory_id);

-- To display the tables

SELECT *
FROM Category;

SELECT *
FROM Subcategory;

SELECT *
FROM Contacts;

SELECT *
FROM Campaign;