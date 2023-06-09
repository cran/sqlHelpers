% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/sql_helpers.R
\name{t_sql_bulk_insert}
\alias{t_sql_bulk_insert}
\title{Generate a BULK INSERT statement, optionally execute the statement if con is not NULL.}
\usage{
t_sql_bulk_insert(file, schema = NULL, table, con = NULL, ...)
}
\arguments{
\item{file}{A string, the file path to the file with data to insert.}

\item{schema}{A string, the schema name of the destination SQL table.}

\item{table}{A string, the table name of the destination SQL table.}

\item{con}{A database connection that can be passed to DBI::dbSendQuery/DBI::dbGetQuery.}

\item{...}{named arguments are passed to the WITH statement.}
}
\value{
A string, the BULK INSERT statement; or the results retrieved by DBI::dbGetQuery after executing the statement.
}
\description{
Generate a BULK INSERT statement, optionally execute the statement if con is not NULL.
}
\examples{
t_sql_bulk_insert(
file = tempfile(),
schema = "test",
table = "table1",
format = 'CSV',
first_row = 2,
)
}
