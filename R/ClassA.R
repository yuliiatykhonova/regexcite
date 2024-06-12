#' @keywords internal
.ClassA <- R6::R6Class(
  ".ClassA",
  public = list(
    f1 = function(p1, p2) {
      stop("f1 method is an abstract method and must be overrided in a child class.")
    },
    f2 = function(p3) {
      stop("f2 method is an abstract method and must be overrided in a child class.")
    }
  )
)
