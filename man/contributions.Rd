% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/data.R
\docType{data}
\name{contributions}
\alias{contributions}
\title{Committee contributions metadata}
\format{
A data frame with 1000 rows and 15 columns with information about candidate committee contributions.
\describe{
\item{cmte_id}{A 9-character alpha-numeric code assigned to a committee by the Federal Election Commission}
\item{amndt_ind}{Amendment indicator: Indicates if the report being filed is new (N), an amendment (A) to a previous
report or a termination (T) report}
\item{rpt_tp}{Indicates the type of report filed, listed here:
\url{https://www.fec.gov/campaign-finance-data/report-type-code-descriptions/}}
\item{transaction_pgi}{This code indicates the election for which the contribution was made.
EYYYY (election Primary, General, Other plus election year)}
\item{transaction_tp}{Transaction types, listed here:
\url{https://www.fec.gov/campaign-finance-data/transaction-type-code-descriptions/}}
\item{entity_tp}{Entity Type:

CAN = Candidate

CCM = Candidate Committee

COM = Committee

IND = Individual (a person)

ORG = Organization (not a committee and not a person)

PAC = Political Action Committee

PTY = Party Organization}
\item{name}{Contributor/lender/transfer Name}
\item{city}{City}
\item{state}{State}
\item{zip_code}{ZIP Code}
\item{transaction_dt}{Transaction date (YYYY-MM-DD)}
\item{transaction_amt}{Transaction Amount}
\item{other_id}{For contributions from individuals this column is null.
For contributions from candidates or other committees this column will contain that contributor's FEC ID}
\item{cand_id}{A 9-character alpha-numeric code assigned to a candidate by the FEC, which remains
the same across election cycles if running for the same office}
\item{tran_id}{Only for Electronic Filings. A unique identifier associated with each itemization or transaction
appearing in an FEC electronic file. A transaction ID is unique for a specific committee for a specific report.}
}
}
\source{
\url{https://www.fec.gov/campaign-finance-data/contributions-committees-candidates-file-description/}, Updated 2020-11-18
}
\usage{
contributions
}
\description{
Provides data pertaining to each candidate and their contributions from committees during the 2020 general election.
}
\keyword{datasets}
