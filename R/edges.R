#' Connect two DAG nodes with an arrow
#'
#' Thin wrapper around [ggdiagram::connect()] with DAG-friendly defaults:
#' `resect = 2`, black color, full opacity.
#'
#' @param from A ggdiagram shape object (the arrow's origin).
#' @param to A ggdiagram shape object (the arrow's destination).
#' @param resect Amount to pull back the arrow from the node boundary.
#'   Defaults to `2`.
#' @param color Arrow color. Defaults to `"black"`.
#' @param alpha Arrow opacity. Defaults to `1`.
#' @param ... Additional arguments passed to [ggdiagram::connect()].
#' @return A connection object suitable for adding to a `ggdiagram()` plot.
#' @export
#' @examples
#' library(daggr)
#' A <- dag_ellipse("X")
#' B <- dag_ellipse("Y") |> place(from = A, where = "right", sep = 2.5)
#' dag_connect(A, B)
dag_connect <- function(from,
                        to,
                        resect = 2,
                        color = "black",
                        alpha = 1,
                        ...) {
  ggdiagram::connect(
    from,
    to,
    resect = resect,
    color = color,
    alpha = alpha,
    ...
  )
}
