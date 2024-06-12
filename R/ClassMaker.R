#' R6 ClassMaker
#'
#' @description
#' Creates `.ClassB` or `.ClassC` with `ClassMaker$make()` function.
#' @importFrom R6 R6Class
#' @export

ClassMaker <- R6::R6Class(
  "ClassMaker",
  public = list(
    #' @description
    #' Creates `.ClassB` or `.ClassC`.
    #' @param type `string` class type. It can be "B" or "C"
    #' @return New R6Class object if type is valid, otherwise - NULL
    #' @examples
    #' class_maker <- ClassMaker$new()
    #' myBClass <- class_maker$make(utils.ClassType$BType)

    make = function(type) {
      res_obj <- NULL
      if (type == "B") {
        res_obj <- .ClassB$new()
      } else if (type == "C") {
        res_obj <- .ClassC$new()
      } else {
        stop(paste0("There is no such class type '", type, "'."))
      }
      return(res_obj)
    }
  )
)

# class_maker <- ClassMaker$new()
# myBClass <- class_maker$make(utils.ClassType$BType)
# myBClass$f1()
# myBClass$f2()
#
# myCClass <- class_maker$make(utils.ClassType$CType)
# myCClass$f1()
# myCClass$f2()
#
# myAClass <- class_maker$make("A")
# myAClass <- .ClassA$new()
# myAClass$f1()
# myAClass$f2()
