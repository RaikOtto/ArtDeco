% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/Simulation.R
\name{simulateCellTypes}
\alias{simulateCellTypes}
\title{Simulate expression profiles of specific cell-types.}
\usage{
simulateCellTypes(
    referenceCellTypes,
    markerGenes,
    numSamples,
    seed,
    verbose
)
}
\arguments{
\item{referenceCellTypes}{Matrix of single-cell expression values
of the cell-type to be simulated. Used to estimate parameters for
negative binomial distribution. Samples as columns and genes as rows.
Counts have to be normalized beforehand.}

\item{markerGenes}{Character vector containing marker genes which
characterize the cell-type to be simulated. Gene identifiers need
to be consistend with \code{referenceCellTypes}.}

\item{numSamples}{An integer specifing the number of samples to be simulated.}

\item{seed}{An integer specifing seed for simulation. Default is \code{NULL}.
Random seed will be generated if no seed is provided.}

\item{verbose}{Logical, indicating whether status updates will be printed.
Default is \code{TRUE}.}
}
\value{
Matrix with simulated count values. Samples as columns and genes
 as rows.
}
\description{
\code{simulateCellTypes} simulates \emph{in silico} expression profiles
of specific cell-types using a negative binomial distribution.
Simulation is based on biological data and marker genes
of these cell-types.
}
