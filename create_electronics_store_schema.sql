-- Database name required by the task:
-- CREATE DATABASE electronics_store;
--
-- In Supabase, run the table definitions below inside the existing project database.

CREATE TABLE brands (
    id integer GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    name varchar(50) NOT NULL UNIQUE
);

CREATE TABLE classifications (
    id integer GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    name varchar(30) NOT NULL UNIQUE
);

CREATE TABLE customers (
    id integer GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    first_name varchar(30) NOT NULL,
    last_name varchar(30) NOT NULL,
    address varchar(150) NOT NULL,
    phone varchar(30) NOT NULL UNIQUE,
    loyalty_card boolean NOT NULL DEFAULT false
);

CREATE TABLE items (
    id integer GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    name varchar(50) NOT NULL,
    quantity integer NOT NULL CHECK (quantity >= 0),
    price decimal(12, 2) NOT NULL CHECK (price > 0.00),
    description text,
    brand_id integer NOT NULL,
    classification_id integer NOT NULL,
    CONSTRAINT fk_items_brands
        FOREIGN KEY (brand_id)
        REFERENCES brands(id)
        ON UPDATE CASCADE
        ON DELETE CASCADE,
    CONSTRAINT fk_items_classifications
        FOREIGN KEY (classification_id)
        REFERENCES classifications(id)
        ON UPDATE CASCADE
        ON DELETE CASCADE
);

CREATE TABLE orders (
    id integer GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    created_at timestamp NOT NULL DEFAULT now(),
    customer_id integer NOT NULL,
    CONSTRAINT fk_orders_customers
        FOREIGN KEY (customer_id)
        REFERENCES customers(id)
        ON UPDATE CASCADE
        ON DELETE CASCADE
);

CREATE TABLE orders_items (
    order_id integer NOT NULL,
    item_id integer NOT NULL,
    quantity integer NOT NULL CHECK (quantity >= 0),
    CONSTRAINT pk_orders_items
        PRIMARY KEY (order_id, item_id),
    CONSTRAINT fk_orders_items_orders
        FOREIGN KEY (order_id)
        REFERENCES orders(id)
        ON UPDATE CASCADE
        ON DELETE CASCADE,
    CONSTRAINT fk_orders_items_items
        FOREIGN KEY (item_id)
        REFERENCES items(id)
        ON UPDATE CASCADE
        ON DELETE CASCADE
);

CREATE TABLE reviews (
    customer_id integer NOT NULL,
    item_id integer NOT NULL,
    created_at timestamp NOT NULL DEFAULT now(),
    rating decimal(3, 1) NOT NULL DEFAULT 0.0 CHECK (rating <= 10.0),
    CONSTRAINT pk_reviews
        PRIMARY KEY (customer_id, item_id),
    CONSTRAINT fk_reviews_customers
        FOREIGN KEY (customer_id)
        REFERENCES customers(id)
        ON UPDATE CASCADE
        ON DELETE CASCADE,
    CONSTRAINT fk_reviews_items
        FOREIGN KEY (item_id)
        REFERENCES items(id)
        ON UPDATE CASCADE
        ON DELETE CASCADE
);
