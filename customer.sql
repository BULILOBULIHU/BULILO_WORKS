create table customers(
customer_id serial primary key, first_name varchar(50), last_nmae varchar(50), email varchar(50),phone varchar(20),address text, 
created_at timestamp default current_timestamp
);
create table accounts(
account_id serial primary key, customer_id int references customers(customer_id),
account_type varchar(20), balance decimal(15,2), created_at timestamp default current_timestamp
);
create table transactions(
transaction_id serial primary key, account_id int references accounts(account_id), transaction_type varchar(20),
amount decimal(16,3),transaction_data timestamp default current_timestamp
);
create table employees(
employee_id serial primary key, full_name varchar(100), position varchar(40), hire_date date 
);
create table loans(
loan_id serial primary key, customer_id int references customers(customer_id),
loan_amount decimal(16,2), interest_rate decimal(10,2), loan_status varchar(20) 
);









