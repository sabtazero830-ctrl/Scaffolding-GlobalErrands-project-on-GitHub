ERD / Diagram placeholder

The database schema is in docs/schema.sql. For a production ERD use a tool like dbdiagram.io or draw.io.

Suggested entities for full ERD:
- users (roles: customer, store_owner, driver, admin, franchise)
- stores, store_employees
- products, product_variants, inventory
- carts, cart_items
- orders, order_items, order_status_history
- deliveries, drivers, driver_locations
- payments, refunds, payouts
- wallets, transactions
- promotions, coupons
- audit_logs
