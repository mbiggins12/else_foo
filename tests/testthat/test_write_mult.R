# TESTS ---------------------------------------------------------------------------------------------------------------

# 1. Run devtools::use_testthat().
# 2. Create a test file (contents below) named test_perimeter.R in the tests/testthat/ folder.
# 3. Run the test using Build -> Test Package.


context("write_mult")

test_that("column_extract", {
  write_mult(iris,list(2),"Sepal_Width")
  sepal <- read_csv("Sepal_Width.csv")
  expect_equal(sepal[,1],iris$Sepal.Width)
})

