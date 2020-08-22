-- Comments in SQL Start with dash-dash --
INSERT INTO products (name, price, can_be_returned) VALUES ('chair', 44.00, 'f');
--adds chair product to product db
INSERT INTO products (name, price, can_be_returned) VALUES ('stool', 25.99, 't');
--adds stool product to product db
INSERT INTO products (name, price, can_be_returned) VALUES ('table',124.00, 'f');
--adds table product to product db
SELECT * FROM products;
--shows all rows and columns in table
SELECT name, price FROM products;
--displays name and price columns
INSERT INTO products (name, price, can_be_returned) VALUES ('chair', 44.00, 'f');
--adds another chair, in fact I accidently added 3 rows of $44 non returnable chairs
SELECT name FROM products WHERE can_be_returned = 't';
--shows which product(s) can be returned
SELECT name  FROM products WHERE price < 44;
--shows products with price of less than $44
SELECT name FROM products WHERE price > 22.5 AND price < 99.99;
--shows products with price between $22.5 and 99.99
UPDATE products SET price = (price - 20);
--takes $20 off the price of each item
DELETE FROM products WHERE price < 25;
--deletes products from db with a price less that 25
UPDATE products SET price = (price + 20);
--updating product prices to add $20 price increase
UPDATE products SET can_be_returned = 't';
--updates can_be_returned to true, marking everything returnable
