test_that("Test get_coor"){
  expect_that(class(get_coor("58353, Sweden")), is_a("list"),
              info = "Error: Returned value is not of class list.")
  expect_that(dat$status=="OK")
}
