test_that("dag_fills is a named list", {
  expect_type(dag_fills, "list")
  expect_named(dag_fills)
})

test_that("dag_fills contains expected names", {
  expected <- c(
    "default", "treatment", "outcome", "unmeasured",
    "latent", "instrument", "mediator", "constructed"
  )
  expect_equal(sort(names(dag_fills)), sort(expected))
})

test_that("dag_fills values are valid color strings", {
  for (nm in names(dag_fills)) {
    expect_no_error(grDevices::col2rgb(dag_fills[[nm]]))
  }
})

test_that("dag_fills$default matches dag_default_fill", {
  expect_equal(dag_fills$default, dag_default_fill)
})

test_that("dag_fills works with dag_ellipse", {
  node <- dag_ellipse("U", fill = dag_fills$unmeasured)
  expect_equal(node@fill, "#708090")
})
