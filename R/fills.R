#' Semantic color palette for DAG nodes
#'
#' A named list of colors for common DAG variable types. Use these instead of
#' raw hex codes for self-documenting, autocomplete-friendly color assignment.
#'
#' @format A named list with the following elements:
#' \describe{
#'   \item{default}{`"#0D4F77"` — dark blue, for general variables}
#'   \item{treatment}{`"#2E7D32"` — green, for treatment/exposure}
#'   \item{outcome}{`"#C62828"` — red, for outcome variables}
#'   \item{unmeasured}{`"#708090"` — slate gray, for unobserved confounders}
#'   \item{latent}{`"#B0BEC5"` — light gray, for latent/error terms}
#'   \item{instrument}{`"#5D4037"` — dark brown, for instruments}
#'   \item{mediator}{`"#0D4F77"` — dark blue, for mediators}
#'   \item{constructed}{`"darkred"` — for constructed indices}
#' }
#'
#' @export
#' @examples
#' library(daggr)
#' dag_fills$treatment
#' dag_ellipse("X", fill = dag_fills$treatment)
dag_fills <- list(
  default     = "#0D4F77",
  treatment   = "#2E7D32",
  outcome     = "#C62828",
  unmeasured  = "#708090",
  latent      = "#B0BEC5",
  instrument  = "#5D4037",
  mediator    = "#0D4F77",
  constructed = "darkred"
)
