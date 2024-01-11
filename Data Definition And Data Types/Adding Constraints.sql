ALTER TABLE products
ADD CONSTRAINT fk_customer_id
FOREIGN KEY (category_id) REFERENCES products (id);