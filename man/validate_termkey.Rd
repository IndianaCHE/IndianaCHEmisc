% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/termkey.R
\name{validate_termkey}
\alias{validate_termkey}
\title{Determine if a termkey is valid}
\usage{
validate_termkey(termkey, allow_seasonkeys = FALSE)
}
\arguments{
\item{termkey}{TermKey for record pulled from SQL database}
}
\value{
either the valid termkey, or \code{NA_integer} is not a valid termkey
}
\description{
For use with Indiana CHE \code{TermKey}s.
 Takes into account the change in reporting method in summer 2016.
}
\examples{
validate_termkey(20081) # Valid, summer 2, 2007
validate_termkey(20082) # Valid, Fall 2007
validate_termkey(20083) # Valid, Spring 2008
validate_termkey(20084) # Valid, Summer 1, 2008
validate_termkey(20085) # Not Valid

validate_termkey(20181) # Not Valid
validate_termkey(20182) # Valid, Fall 2017
validate_termkey(20183) # Valid, Spring 2018
validate_termkey(20184) # Not Valid
validate_termkey(20185) # Valid, Trailing Summer 2018
}
