CREATE USER mycustomuser;
CREATE DATABASE mycustomdb;
GRANT ALL PRIVILEGES ON DATABASE mycustomdb TO mycustomuser;
ALTER USER postgres with PASSWORD 'P@ssword1234';
ALTER USER mycustomuser with PASSWORD 'P@ssword1234';
