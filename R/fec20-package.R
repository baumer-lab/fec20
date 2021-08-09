#' fec20: A Data Package for the 2020 Elections
#'
#' The fec20 package provides the following 6 datasets from the Federal Election Commission's 2019-2020 election cycle:
#'
#' @section Datasets:
#' \if{html}{\figure{hex_fec20.png}{options: align = "right" width="45\%" alt="Figure: hex_fec16.png"}}
#' \itemize{
#'   \item Candidates: [candidates]
#'   \item Committees: [committees]
#'   \item Individual Contributions: [individuals]
#'   \item Committee Contributions: [contributions]
#'   \item House/Senate Current Campaigns: [campaigns]
#'   \item Operating Expenditures: [expenditures]
#'   \item Transactions From One Committee To Another: [transactions]
#'   \item Political Action Committee (PAC) and Party Summary Financial Information: [pac]}
#'
#' The entire [candidates], [committees], [campaigns], and [pac] datasets and samples containing 1000 entries of the other datasets are available directly in the package.
#' For the datasets containing samples, full versions can be retrieved via the following functions:
#' \itemize{
#'   \item Individual Contributions: [read_all_individuals]
#'   \item Committee Contributions: [read_all_contributions]
#'   \item Operating Expenditures: [read_all_expenditures]
#'   \item Transactions From One Committee To Another: [read_all_transactions]
#' }
#'
#' In addition, `fec20` provides the [states] dataset giving geographical information about the 50 states.
#'
#' Note: There are 3 forthcoming datasets that contain results from the House, Senate, and Presidential elections.
#'
#' @section Authors:
#' \itemize{
#'   \item Marium Tapal: \url{https://github.com/mariumtapal}
#'   \item Irene Ryan: \url{https://github.com/ireneryan}
#'   \item Rana Gahwagy: \url{https://github.com/ranawg}
#'   \item Ben Baumer: \url{https://github.com/beanumber}
#' }
#'
#' @docType package
#' @name fec20
NULL
