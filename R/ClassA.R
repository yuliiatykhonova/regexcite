#' R6 Abstract class `.ClassA`
#'
#' @description
#' Serves as a base class for classes `ClassB` and `ClassC`.
#' @keywords internal
.ClassA <- R6::R6Class(
  ".ClassA",
  public = list(
    #' @description
    #' First test method.
    #' @return Error, because this method must be overwritten in child class
    f1 = function() {
      stop("f1 method is an abstract method and must be overrided in a child class.")
    },

    #' @description
    #' Second test method.
    #' @return Error, because this method must be overwritten in child class
    f2 = function() {
      stop("f2 method is an abstract method and must be overrided in a child class.")
    }
  )
)
