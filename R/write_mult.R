# CREATE PACKAGE FUNCTION --------------------------------------------------------------------------------------------

#' Write multiple files from one table using column name as new file name.
#'
#' @param x table of data with column headers.
#' @param type the type of file to be made (data,head column ids, column names).
#' @import readr
#' @return The created files saved to current working directory.
#' @examples
#' write_mult(iris,list(c(1,2),c(3,4),5),c("Sepal","Petal","Species"))
#' @export

write_mult <- function(x,y,z) {
  i <- 1
  if (length(y)!=length(x)) stop("Enter a name for each csv", call. = FALSE)
  if(class(x) != "data.frame") stop("Please add a data frame", .call = F)
  while (i <= length(y))
  {
    extract <- y[[i]]
    path <- paste(z[i],"csv",sep = ".")
    write_csv(x[extract],path)
    i <- i + 1
  }
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


