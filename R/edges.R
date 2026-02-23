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

#' Define a single edge specification
#'
#' Creates a lightweight edge specification for use inside [dag_edges()].
#' Each spec captures the `from` and `to` nodes plus any per-edge overrides
#' (e.g., `linetype`, `arc_bend`).
#'
#' @param from A ggdiagram shape object (the arrow's origin).
#' @param to A ggdiagram shape object (the arrow's destination).
#' @param ... Per-edge arguments passed to [ggdiagram::connect()]
#'   (e.g., `linetype`, `arc_bend`). These override the shared defaults
#'   set in [dag_edges()].
#' @return A `dag_edge_spec` object (a named list).
#' @export
#' @examples
#' library(daggr)
#' A <- dag_ellipse("X")
#' B <- dag_ellipse("Y") |> place(from = A, where = "right", sep = 2.5)
#' dag_edge(A, B, linetype = "dashed")
dag_edge <- function(from, to, ...) {
  structure(
    list(from = from, to = to, ...),
    class = "dag_edge_spec"
  )
}

#' Create multiple DAG edges at once
#'
#' Takes multiple [dag_edge()] specifications and builds all connections in
#' one call. Shared styling (e.g., `resect`, `color`) is specified once;
#' per-edge overrides in each [dag_edge()] take precedence.
#'
#' Returns a plain `list()` of connection objects, which `ggplot2`'s `+`
#' operator handles natively (iterating over each element).
#'
#' @param ... One or more [dag_edge()] specifications.
#' @param resect Amount to pull back arrows from node boundaries.
#'   Defaults to `2`.
#' @param color Arrow color. Defaults to `"black"`.
#' @param alpha Arrow opacity. Defaults to `1`.
#' @return A list of connection objects, suitable for adding to a
#'   `ggdiagram()` plot with `+`.
#' @export
#' @examples
#' library(daggr)
#' X <- dag_ellipse("X")
#' M <- dag_ellipse("M") |> place(from = X, where = "right", sep = 2.5)
#' Y <- dag_ellipse("Y") |> place(from = M, where = "right", sep = 2.5)
#'
#' ggdiagram() +
#'   X + M + Y +
#'   dag_edges(
#'     dag_edge(X, M),
#'     dag_edge(M, Y),
#'     dag_edge(X, Y, arc_bend = 0.4)
#'   ) +
#'   theme_dag()
dag_edges <- function(..., resect = 2, color = "black", alpha = 1) {
  specs <- list(...)
  lapply(specs, function(spec) {
    if (!inherits(spec, "dag_edge_spec")) {
      rlang::abort("All arguments to `dag_edges()` must be `dag_edge()` specs.")
    }
    from <- spec$from
    to <- spec$to
    per_edge <- spec[!names(spec) %in% c("from", "to")]
    shared <- list(resect = resect, color = color, alpha = alpha)
    args <- modifyList(shared, per_edge)
    args$from <- from
    args$to <- to
    rlang::exec(ggdiagram::connect, !!!args)
  })
}
