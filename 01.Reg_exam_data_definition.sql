CREATE TABLE brands (
	id SERIAL PRIMARY KEY,
	name VARCHAR(50) NOT NULL UNIQUE
);


CREATE TABLE classifications (
	id SERIAL PRIMARY KEY,
	name VARCHAR(30) NOT NULL UNIQUE
);

CREATE TABLE customers (
	id SERIAL PRIMARY KEY,
	first_name VARCHAR(30) NOT NULL,
	last_name VARCHAR(30) NOT NULL,
	address VARCHAR(150) NOT NULL,
	phone VARCHAR(30) NOT NULL UNIQUE,
	loyalty_card BOOLEAN NOT NULL DEFAULT FALSE
);

CREATE TABLE items(
	id SERIAL PRIMARY KEY,
	name VARCHAR(50) NOT NULL,
	quantity INT NOT NULL,
	price DECIMAL(12, 2) NOT NULL,
	description TEXT,
	brand_id INT NOT NULL,
	classification_id INT NOT NULL,

	CONSTRAINT ck_items_quantity
	CHECK (quantity >= 0),

	CONSTRAINT ck_items_price
	CHECK(price > 0.00),
	
	FOREIGN KEY (brand_id) REFERENCES brands(id) ON UPDATE CASCADE ON DELETE CASCADE,
	FOREIGN KEY (classification_id) REFERENCES classifications(id) ON UPDATE CASCADE ON DELETE CASCADE
);


CREATE TABLE orders(
	id SERIAL PRIMARY KEY,
	created_at TIMESTAMP NOT NULL DEFAULT NOW(),
	customer_id INT NOT NULL,
	FOREIGN KEY(customer_id) REFERENCES customers(id) ON UPDATE CASCADE ON DELETE CASCADE
);


CREATE TABLE reviews (
	customer_id INT NOT NULL,
	item_id INT NOT NULL,
	created_at TIMESTAMP NOT NULL DEFAULT NOW(),
	rating DECIMAL(3,1) NOT NULL DEFAULT 0.0,

	CONSTRAINT ck_reviews_rating
	CHECK (rating <= 10.0),
	
	PRIMARY KEY(customer_id, item_id),
	FOREIGN KEY(customer_id) REFERENCES customers(id) ON UPDATE CASCADE ON DELETE CASCADE,
	FOREIGN KEY(item_id) REFERENCES items(id) ON UPDATE CASCADE ON DELETE CASCADE
);

CREATE TABLE orders_items (
	order_id INT NOT NULL,
	item_id INT NOT NULL,
	quantity INT NOT NULL,

	CONSTRAINT ck_orders_items_quantity
	CHECK(quantity >= 0),

	PRIMARY KEY(order_id, item_id),
	FOREIGN KEY(order_id) REFERENCES orders(id) ON UPDATE CASCADE ON DELETE CASCADE,
	FOREIGN KEY(item_id) REFERENCES items(id) ON UPDATE CASCADE ON DELETE CASCADE
);






