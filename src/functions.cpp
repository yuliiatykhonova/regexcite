
// we only include RcppArmadillo.h which pulls Rcpp.h in for us
#include "RcppArmadillo.h"

// via the depends attribute we tell Rcpp to create hooks for
// RcppArmadillo so that the build process will know what to do
//
// [[Rcpp::depends(RcppArmadillo)]]

//' @import Rcpp
//' @useDynLib regexcite, .registration = TRUE
//' @export
// [[Rcpp::export]]
arma::sword mul_func(arma::sword a, arma::sword b) {
  return a * b;
}
