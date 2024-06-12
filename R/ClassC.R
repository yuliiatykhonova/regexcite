#' @keywords internal
.ClassC <- R6::R6Class(
  ".ClassC",
  inherit = .ClassA,
  public = list(
    f1 = function(p1, p2) {
      print("ClassC$f1")
    },
    f2 = function(p3) {
      print("ClassC$f2")
    }
  )
)
