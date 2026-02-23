#' Create a styled DAG node
#'
#' Unified constructor that dispatches to [dag_ellipse()] or [dag_rectangle()]
#' based on the `shape` parameter.
#'
#' @param text Character string displayed inside the node.
#' @param fill Fill color. Defaults to `dag_default_fill`.
#' @param shape Node shape: `"ellipse"` (default) or `"rectangle"`.
#' @param ... Additional arguments passed to [dag_ellipse()] or
#'   [dag_rectangle()].
#' @return An `ob_ellipse` or `ob_rectangle` object.
#' @export
#' @examples
#' library(daggr)
#' dag_node("X")
#' dag_node("Y", shape = "rectangle")
dag_node <- function(text,
                     fill = dag_default_fill,
                     shape = c("ellipse", "rectangle"),
                     ...) {
  shape <- match.arg(shape)
  switch(shape,
    ellipse   = dag_ellipse(text = text, fill = fill, ...),
    rectangle = dag_rectangle(text = text, fill = fill, ...)
  )
}
