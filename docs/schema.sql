-- Core tables (initial)
CREATE TABLE users (
  id SERIAL PRIMARY KEY,
  email VARCHAR(255) UNIQUE,
  phone VARCHAR(50),
  password_hash VARCHAR(255),
  role VARCHAR(50),
  created_at TIMESTAMP DEFAULT now()
);

CREATE TABLE stores (
  id SERIAL PRIMARY KEY,
  owner_id INTEGER REFERENCES users(id),
  name TEXT,
  country VARCHAR(10),
  city TEXT,
  address TEXT,
  created_at TIMESTAMP DEFAULT now()
);

CREATE TABLE products (
  id SERIAL PRIMARY KEY,
  store_id INTEGER REFERENCES stores(id),
  name TEXT,
  price NUMERIC(12,2),
  currency VARCHAR(8),
  stock INTEGER,
  created_at TIMESTAMP DEFAULT now()
);

CREATE TABLE orders (
  id SERIAL PRIMARY KEY,
  customer_id INTEGER REFERENCES users(id),
  status VARCHAR(50),
  total_amount NUMERIC(12,2),
  currency VARCHAR(8),
  created_at TIMESTAMP DEFAULT now()
);
