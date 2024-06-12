#' @keywords internal
.ClassB <- R6::R6Class(
  ".ClassB",
  inherit = .ClassA,
  public = list(
    f1 = function(p1, p2) {
      print("ClassB$f1")
    },
    f2 = function(p3) {
      print("ClassB$f2")
    }
  )
)
