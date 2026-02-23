test_that(".onLoad sets a default arrowhead", {
  ah <- ggdiagram::arrowhead()
  expect_false(is.null(ah))
})
