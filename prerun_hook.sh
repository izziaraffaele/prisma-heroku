#! /bin/bash

set -e

printf "
port: ${PORT}
# managementApiSecret: ${MGMT_SECRET}

databases:
  default:
    connector: postgres
    rawAccess: true
    migrations: true
    connectionLimit: 2
    uri: ${DATABASE_URL}?ssl=1
" >> ${PRISMA_CONFIG_PATH}
