#!/bin/bash
set -e

MYSQL="mysql -uroot -p${MYSQL_ROOT_PASSWORD} "

echo "Creating database: ${MYSQL_DATABASE}"

$MYSQL <<EOSQL
DROP DATABASE IF EXISTS ${MYSQL_DATABASE};

CREATE DATABASE IF NOT EXISTS ${MYSQL_DATABASE};

CREATE TABLE IF NOT EXISTS movie (
    movie_id VARCHAR(9) PRIMARY KEY,
    title    VARCHAR(100),
    release  VARCHAR(4),
    rating   DECIMAL(2, 1),
    image    VARCHAR(255)
);
EOSQL