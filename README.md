# meltano-json-bug
Repo contains steps to reproduce a bug with replicating postgres json/jsonb columns to Snowflake. Bug transforms these to a varchar of `true` regardless of column contents

# Steps to reproduce
1. Change the `meltano.yml` file config to match your snowflake env
2. Create a .env in the root of the repo that contains the following (fill as needed):
```.env
environment="dev"
DB_PASSWORD=""
TAP_POSTGRES_HOST="postgres-db"
TAP_POSTGRES_USER="postgres"
TARGET_SNOWFLAKE_ACCOUNT=""
TARGET_SNOWFLAKE_PASSWORD=""
```
3. run `docker-compose build`
4. run `docker-compose up`
