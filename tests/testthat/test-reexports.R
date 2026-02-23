test_that("ggdiagram is re-exported", {
  expect_true(is.function(daggr::ggdiagram))
})

test_that("ob_point is re-exported", {
  expect_no_error(daggr::ob_point)
})

test_that("place is re-exported", {
  expect_true(is.function(daggr::place))
})

test_that("connect is re-exported", {
  expect_true(is.function(daggr::connect))
})

test_that("arrow_head_line is re-exported", {
  expect_true(is.function(daggr::arrow_head_line))
})
