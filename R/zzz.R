.onLoad <- function(libname, pkgname) {
  arrowhead_matrix <- ggarrow::arrow_head_line(
    angle = 30, lineend = "round"
  )(1, 1)
  ggdiagram::set_default_arrowhead(arrowhead_matrix)
}
