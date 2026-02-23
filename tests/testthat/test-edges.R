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

# --- dag_edge() ---

test_that("dag_edge returns a dag_edge_spec", {
  a <- dag_ellipse("X")
  b <- dag_ellipse("Y") |> place(from = a, where = "right", sep = 2.5)
  spec <- dag_edge(a, b)
  expect_s3_class(spec, "dag_edge_spec")
  expect_equal(spec$from, a)
  expect_equal(spec$to, b)
})

test_that("dag_edge captures per-edge arguments", {
  a <- dag_ellipse("X")
  b <- dag_ellipse("Y") |> place(from = a, where = "right", sep = 2.5)
  spec <- dag_edge(a, b, linetype = "dashed", arc_bend = 0.3)
  expect_equal(spec$linetype, "dashed")
  expect_equal(spec$arc_bend, 0.3)
})

# --- dag_edges() ---

test_that("dag_edges returns a list of connections", {
  a <- dag_ellipse("X")
  b <- dag_ellipse("Y") |> place(from = a, where = "right", sep = 2.5)
  c <- dag_ellipse("Z") |> place(from = b, where = "right", sep = 2.5)
  result <- dag_edges(dag_edge(a, b), dag_edge(b, c))
  expect_type(result, "list")
  expect_length(result, 2)
})

test_that("dag_edges works with ggdiagram plot", {
  a <- dag_ellipse("X")
  b <- dag_ellipse("Y") |> place(from = a, where = "right", sep = 2.5)
  c <- dag_ellipse("Z") |> place(from = b, where = "right", sep = 2.5)
  expect_no_error(
    ggdiagram() + a + b + c +
      dag_edges(dag_edge(a, b), dag_edge(b, c))
  )
})

test_that("dag_edges rejects non-spec arguments", {
  expect_error(
    dag_edges("not a spec"),
    "dag_edge"
  )
})

test_that("dag_edges passes per-edge overrides", {
  a <- dag_ellipse("X")
  b <- dag_ellipse("Y") |> place(from = a, where = "right", sep = 2.5)
  expect_no_error(
    dag_edges(dag_edge(a, b, linetype = "dashed"))
  )
})
