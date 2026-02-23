.onLoad <- function(libname, pkgname) {
  arrowhead_matrix <- arrowheadr::arrow_head_deltoid(d = 2.3, n = 100)
  ggdiagram::set_default_arrowhead(arrowhead_matrix)
}
