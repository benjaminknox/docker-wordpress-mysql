#!/bin/bash
set -euo pipefail

until nc -z -v -w30 'mysql' 3306
do
  echo "Waiting for database connection..."
  # wait for 5 seconds before check again
  sleep 5
done

docker-entrypoint.sh apache2-foreground
