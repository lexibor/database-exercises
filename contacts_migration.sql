USE codeup_test_db;

DROP TABLE contacts;

CREATE TABLE contacts (
  id INT UNSIGNED NOT NULL AUTO_INCREMENT,
  name VARCHAR(150) NOT NULL,
  phone_number VARCHAR(46),
  created_at DATE,
  age TINYINT,
  PRIMARY KEY (id)
);