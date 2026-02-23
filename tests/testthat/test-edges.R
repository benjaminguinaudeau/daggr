test_that("dag_connect creates a connection without error", {
  a <- dag_ellipse("X")
  b <- dag_ellipse("Y") |> place(from = a, where = "right", sep = 2.5)
  expect_no_error(dag_connect(a, b))
})

test_that("dag_connect passes ... through", {
  a <- dag_ellipse("X")
  b <- dag_ellipse("Y") |> place(from = a, where = "right", sep = 2.5)
  expect_no_error(dag_connect(a, b, linetype = "dashed"))
})
