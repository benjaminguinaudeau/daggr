test_that("theme_dag returns a ggplot2 theme", {
  thm <- theme_dag()
  expect_s3_class(thm, "theme")
})

test_that("theme_dag has centered bold title", {
  thm <- theme_dag()
  expect_equal(thm$plot.title$hjust, 0.5)
  expect_equal(thm$plot.title$face, "bold")
})

test_that("theme_dag has centered bold subtitle", {
  thm <- theme_dag()
  expect_equal(thm$plot.subtitle$hjust, 0.5)
  expect_equal(thm$plot.subtitle$face, "bold")
})
