test_that("dag_ellipse returns an ob_ellipse with correct defaults", {
  node <- dag_ellipse("X")
  expect_s7_class(node, ggdiagram::ob_ellipse)
  expect_equal(node@fill, "#0D4F77")
  expect_equal(node@a, 3)
  expect_equal(node@b, 1.5)
  expect_true(is.na(node@color))
})

test_that("dag_ellipse accepts custom fill", {
  node <- dag_ellipse("X", fill = "red")
  expect_equal(node@fill, "red")
})

test_that("dag_ellipse passes ... to ob_ellipse", {
  node <- dag_ellipse("X", alpha = 0.5)
  expect_equal(node@alpha, 0.5)
})

test_that("dag_ellipse preserves label text", {
  node <- dag_ellipse("Treatment")
  expect_equal(node@label@label, "Treatment")
})

test_that("dag_rectangle returns an ob_rectangle with correct defaults", {
  node <- dag_rectangle("Y")
  expect_s7_class(node, ggdiagram::ob_rectangle)
  expect_equal(node@fill, "#0D4F77")
  expect_equal(node@width, 6)
  expect_equal(node@height, 3)
  expect_true(is.na(node@color))
})

test_that("dag_rectangle accepts custom fill", {
  node <- dag_rectangle("Y", fill = "green")
  expect_equal(node@fill, "green")
})

test_that("dag_rectangle passes ... to ob_rectangle", {
  node <- dag_rectangle("Y", alpha = 0.3)
  expect_equal(node@alpha, 0.3)
})

test_that("dag_rectangle preserves label text", {
  node <- dag_rectangle("Outcome")
  expect_equal(node@label@label, "Outcome")
})
