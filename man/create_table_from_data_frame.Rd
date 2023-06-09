% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/sql_helpers.R
\name{create_table_from_data_frame}
\alias{create_table_from_data_frame}
\title{Generate a CREATE TABLE statement based on a data.frame, optionally execute the statement if con is not NULL.}
\usage{
create_table_from_data_frame(x, table_name, con = NULL)
}
\arguments{
\item{x}{A data.frame.}

\item{table_name}{A string, the name of the SQL table to create.}

\item{con}{A database connection that can be passed to DBI::dbSendQuery/DBI::dbGetQuery.}
}
\value{
A string, the CREATE TABLE statement; or the results retrieved by DBI::dbSendQuery after executing the statement.
}
\description{
Generate a CREATE TABLE statement based on a data.frame, optionally execute the statement if con is not NULL.
}
\examples{
create_table_from_data_frame(x = iris, table_name = "test")
}
