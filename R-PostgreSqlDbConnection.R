### libraries ####
require(RPostgreSQL)
require(DBI)
### End Region ####


### db kill connections####
killDbConnections <- function () {
  
  all_cons <- dbListConnections(PostgreSQL())
  for(con in all_cons)
    dbDisconnect(con)
  
}

killDbConnections()
### End Region ####

### PostgeSql db Connections ####

drv <- dbDriver("PostgreSQL")
connection <- dbConnect(
  drv,
  dbname = "dss_db",
  host = "host",
  port = "port",
  user = "username",
  password = "password"
)


query <- dbGetQuery(connection, "SELECT * FROM table_name")
dbDisconnect(connection) 

### End Region ####


