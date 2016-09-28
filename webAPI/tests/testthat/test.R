test_that("Testing getURL2R()",{
  test1<- getURL2R("Linköping,Sweden")
  
  expect_that(getURL2R, is_a("function"),
              info = "Error: getURL2R is not a function.")
  expect_that(all(names(formals(getURL2R)) %in% c("path")), 
              condition=is_true(), info = "Error: API argument name is wrong.")
  expect_that(test1, is_a("list"), info= "Error: API did not return an R list.")
  expect_error(getURL2R(123), info="Error: Insert character string.")
  expect_equal(test1$status, "OK", info= "Error: API request failed")
}
)

test_that("Testing get_coor()",{
  test1<- getURL2R("Linkoping,Sweden")
  coor1<- get_coor(test1)
  
  expect_that(get_coor, is_a("function"),
              info = "Error: getURL2R is not a function.")
  expect_that(all(names(formals(get_coor)) %in% c("Robj")), 
              condition=is_true(), info = "Error: API argument name is wrong.")
  expect_that(test1, is_a("list"), info= "Error: API did not return an R list.")
  
}
)
