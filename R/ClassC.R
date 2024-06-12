#' R6 Child class of `.ClassA`
#'
#' @description
#' One of the test classes.
#' @export
ClassC <- R6::R6Class(
  "ClassC",
  inherit = .ClassA,
  public = list(
    #' @description
    #' First test method.
    #' @return There is no to return - print some message
    f1 = function() {
      print("ClassC$f1")
    },

    #' @description
    #' Second test method.
    #' @return There is no to return - print some message
    f2 = function() {
      print("ClassC$f2")
    }
  )
)
