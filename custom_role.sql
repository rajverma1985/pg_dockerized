CREATE USER cybertec;
CREATE DATABASE cybertecdb;
GRANT ALL PRIVILEGES ON DATABASE cybertecdb TO cybertec;
ALTER USER postgres with PASSWORD 'P@ssword1234';
ALTER USER cybertec with PASSWORD 'P@ssword1234';
