test_that("dag_node defaults to ellipse", {
  node <- dag_node("X")
  expect_s7_class(node, ggdiagram::ob_ellipse)
})

test_that("dag_node creates rectangle when requested", {
  node <- dag_node("X", shape = "rectangle")
  expect_s7_class(node, ggdiagram::ob_rectangle)
})

test_that("dag_node passes fill through", {
  node <- dag_node("X", fill = "red")
  expect_equal(node@fill, "red")
})

test_that("dag_node passes ... to underlying constructor", {
  node <- dag_node("X", alpha = 0.5)
  expect_equal(node@alpha, 0.5)
})

test_that("dag_node preserves label text", {
  node <- dag_node("Treatment")
  expect_equal(node@label@label, "Treatment")
})

test_that("dag_node rejects invalid shape", {
  expect_error(dag_node("X", shape = "triangle"))
})
