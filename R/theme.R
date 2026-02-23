#' A clean theme for DAG diagrams
#'
#' Based on [ggplot2::theme_void()] with centered bold title and subtitle.
#'
#' @return A [ggplot2::theme] object.
#' @export
#' @examples
#' library(daggr)
#' theme_dag()
theme_dag <- function() {
  ggplot2::theme_void() +
    ggplot2::theme(
      plot.title = ggplot2::element_text(hjust = 0.5, face = "bold"),
      plot.subtitle = ggplot2::element_text(hjust = 0.5, face = "bold")
    )
}
