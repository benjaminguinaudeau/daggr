#' Create a styled ellipse node for a DAG
#'
#' Wrapper around [ggdiagram::ob_ellipse()] with sensible defaults for
#' DAG diagrams: dark blue fill, white bold text, no border.
#'
#' @param text Character string displayed inside the ellipse.
#' @param fill Fill color. Defaults to `"#0D4F77"` (dark blue).
#' @param text_color Color of the label text. Defaults to `"white"`.
#' @param fontface Font face for the label. Defaults to `"bold"`.
#' @param a Semi-major axis (horizontal radius). Defaults to `3`.
#' @param b Semi-minor axis (vertical radius). Defaults to `1.5`.
#' @param ... Additional arguments passed to [ggdiagram::ob_ellipse()].
#' @return An `ob_ellipse` object.
#' @export
#' @examples
#' library(daggr)
#' node <- dag_ellipse("X")
dag_ellipse <- function(text,
                        fill = dag_default_fill,
                        text_color = dag_default_text_color,
                        fontface = dag_default_fontface,
                        a = dag_default_ellipse_a,
                        b = dag_default_ellipse_b,
                        ...) {
  lbl <- ggdiagram::ob_label(
    text,
    fill = NA,
    color = text_color,
    fontface = fontface
  )
  ggdiagram::ob_ellipse(
    label = lbl,
    fill = fill,
    color = NA,
    a = a,
    b = b,
    ...
  )
}

#' Create a styled rectangle node for a DAG
#'
#' Wrapper around [ggdiagram::ob_rectangle()] with sensible defaults for
#' DAG diagrams: dark blue fill, white bold text, no border.
#'
#' @param text Character string displayed inside the rectangle.
#' @param fill Fill color. Defaults to `"#0D4F77"` (dark blue).
#' @param text_color Color of the label text. Defaults to `"white"`.
#' @param fontface Font face for the label. Defaults to `"bold"`.
#' @param width Rectangle width. Defaults to `6`.
#' @param height Rectangle height. Defaults to `3`.
#' @param ... Additional arguments passed to [ggdiagram::ob_rectangle()].
#' @return An `ob_rectangle` object.
#' @export
#' @examples
#' library(daggr)
#' node <- dag_rectangle("X")
dag_rectangle <- function(text,
                          fill = dag_default_fill,
                          text_color = dag_default_text_color,
                          fontface = dag_default_fontface,
                          width = dag_default_rect_width,
                          height = dag_default_rect_height,
                          ...) {
  lbl <- ggdiagram::ob_label(
    text,
    fill = NA,
    color = text_color,
    fontface = fontface
  )
  ggdiagram::ob_rectangle(
    label = lbl,
    fill = fill,
    color = NA,
    width = width,
    height = height,
    ...
  )
}
