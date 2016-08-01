# CREATE PACKAGE FUNCTION --------------------------------------------------------------------------------------------

#' Write multiple files from one table using column name as new file name.
#'
#' @param x table of data with column headers.
#' @param y is list of the columns ids to be in each csv
#' @param z is the name of each respective csv
#' @param (data,head column ids, column names).
#' @import readr
#' @return The created files saved to current working directory.
#' @examples
#' write_mult(iris,list(c(1,2),c(3,4),5),c("Sepal","Petal","Species"))
#' @export

write_mult <- function(x,y,z) {
  i <- 1
  if (length(y)!=length(z)) stop("Enter a name for each csv", call. = F)
  if(class(x) != "data.frame") stop("Please add a data frame", call. = F)
  if(class(y)!="list") stop("Please add a list for the columns", call. = F)
  if(class(z)!="character") stop("Please enter a name for the csv in character", call. = F)
  while (i <= length(y))
  {
    extract <- y[[i]]
    if(class(extract)!="numeric") stop("Enter a number for column id", call. = F)
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


