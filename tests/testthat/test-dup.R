test_that("basic duplication works", {
  expect_equal(stringr::str_dup("a", 3), "aaa")
  expect_equal(stringr::str_dup("abc", 2), "abcabc")
  expect_equal(stringr::str_dup(c("a", "b"), 2), c("aa", "bb"))
  expect_equal(stringr::str_dup(c("a", "b"), c(2, 3)), c("aa", "bbb"))
})

test_that("0 duplicates equals empty string", {
  expect_equal(stringr::str_dup("a", 0), "")
  expect_equal(stringr::str_dup(c("a", "b"), 0), rep("", 2))
})

test_that("uses tidyverse recycling rules", {
  expect_error(stringr::str_dup(1:2, 1:3), class = "vctrs_error_incompatible_size")
})
