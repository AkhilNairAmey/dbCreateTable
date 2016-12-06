#' Delete rows of a keyed table
#'
#' Helper function for dbUpdateTable

dbDeleteRowByKey = function(con, name, dt, ...) {
  # Construct main statement
  query = "DELETE FROM %(name)s
           WHERE (%(pk)s)
             IN (%(tups)s) ;"

  # Statement boilerplate to select keys from information schema
  pk = dbGetKey(con, name)
  str_pk = paste0(pk, collapse = ", ")


}