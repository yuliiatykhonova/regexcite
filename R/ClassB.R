#' R6 Child class of `.ClassA`
#'
#' @description
#' One of the test classes.
#' @export
ClassB <- R6::R6Class(
  "ClassB",
  inherit = .ClassA,
  public = list(
    #' @description
    #' First test method.
    #' @return There is no to return - print some message
    f1 = function() {
      print("ClassB$f1")
    },

    #' @description
    #' Second test method.
    #' @return There is no to return - print some message
    f2 = function() {
      print("ClassB$f2")
    }
  )
)
