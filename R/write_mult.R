# CREATE PACKAGE FUNCTION --------------------------------------------------------------------------------------------

#' Write multiple files from one table using column name as new file name.
#'
#' @param x table of data with column headers.
#' @param type the type of file to be made (csv, txt).
#' @return The created files saved to current working directory.
#' @examples
#' write_mult(iris, txt)
#' write_mult(iris)
#' @export

write_mult <- function(x, type = "csv") {
  i <- 1
  if (type == "csv") {
    while (i <= length(x)) {
      path <- paste(colnames(x)[i], "csv", sep = ".")
      write_csv(x[i], path)
      i <- i + 1
    }
  }
  else if (type == "txt") {
    while (i <= length(x)) {
      path <- paste(colnames(x)[i], "txt", sep = ".")
      write_csv(x[i], path)
      i <- i + 1
    }
  }
  else {"file type is not currently supported, try 'csv' or 'txt'"}
}

# # Test function with iris
# write_mult(iris)
#
# # Desired functionality
# len <- unique(iris[, "Sepal.Length", drop = FALSE])
# len$len_id <- 1:nrow(len)
# write_csv(len, path = "test.csv")
#
# len2 <- unique(iris[, "Sepal.Width", drop = FALSE])
# len2$len2_id <- 1:nrow(len2)
# write_csv(len2, path = "test2.csv")


