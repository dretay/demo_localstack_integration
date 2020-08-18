CREATE USER demo_localstack_user WITH PASSWORD 'demo';
CREATE DATABASE demo_localstack_application;
GRANT ALL PRIVILEGES ON DATABASE demo_localstack_application TO demo_localstack_user;
