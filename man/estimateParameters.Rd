% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/Simulation.R
\name{estimateParameters}
\alias{estimateParameters}
\title{Estimate parameters for negative binomial distribution}
\usage{
estimateParameters(countData)
}
\arguments{
\item{countData}{Matrix with the expression values of the reference
cell-types. Parameters are estimated based on this count data.}
}
\value{
Returns a list with the estimated parameters.
}
\description{
\code{estimateParameters} estimates the parameters for the negative binomial
distribution from the provided reference expression profiles. This function
is used by \code{\link{simulateCellTypes}}.
}
