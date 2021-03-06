% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/fn_individuals.R
\name{read_all_individuals}
\alias{read_all_individuals}
\title{Individual Contributions Master metadata}
\usage{
read_all_individuals(n_max = Inf, verbose = interactive())
}
\arguments{
\item{n_max}{Integer specifying the max amount of entries in the dataset. Defaults to the possible maximum.}

\item{verbose}{A progress bar is shown if R is running interactively. Defaults to \code{interactive()}.}
}
\value{
The entire dataframe. More information about variables is at \code{?individuals}.
}
\description{
\code{read_all_individuals} returns a dataframe about transactions from individuals to candidates/committees
}
\examples{
\donttest{read_all_individuals()}
\donttest{read_all_individuals(n_max = 250)}
}
