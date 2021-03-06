% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/frequencies.R
\name{get_route_frequency}
\alias{get_route_frequency}
\title{Get Route Frequency}
\usage{
get_route_frequency(gtfs_obj, start_hour = 6, end_hour = 22,
  quiet = FALSE, service_id = "", dow = c(1, 1, 1, 1, 1, 0, 0))
}
\arguments{
\item{gtfs_obj}{a list of gtfs dataframes as read by the trread package.}

\item{start_hour}{(optional) an integer, default 6 (6 am)}

\item{end_hour}{(optional) an integer, default 22 (10 pm)}

\item{quiet}{default FALSE. whether to echo process messages}

\item{service_id}{(optional) a string from the calendar_df dataframe identifying a particular service schedule.}

\item{dow}{(optional) an integeger vector with days of week. monday=1. default: c(1,1,1,1,1,0,0)}
}
\value{
a gtfs_obj with a dataframe of routes with variables for headway/frequency for a route within a given time frame
}
\description{
should take:
}
\examples{
data(gtfs_obj)
gtfs_obj <- get_route_frequency(gtfs_obj)
x <- order(gtfs_obj$routes_frequency_df$median_headways)
head(gtfs_obj$routes_frequency_df[x,])
}
