#!/bin/bash
set -e

DB_URL=$1
DB_USER=$2
DB_PASSWORD=$3

# Validate migration scripts
flyway -url="$DB_URL" -user="$DB_USER" -password="$DB_PASSWORD" validate
